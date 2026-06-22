#!/usr/bin/env python3
"""extract-artifacts.py — regenerate src/data/artifacts.ts from the datapack.

The website artifact catalog was stuck at 408 stub entries (empty descriptions).
The canonical source is the per-artifact loot tables at
  data/evercraft/loot_table/artifacts/<tier>/<name>.json
Each carries the custom_name, tier, base item, a flavor description (italic gray
lore line) and ability lines (colored "Label: value" lore). This extracts all of
them into the typed Artifact[] the site renders, with real descriptions/abilities.
"""
import os
import re
import json

DP = os.path.expanduser("~/forever/forevercraft-datapack/data/evercraft/loot_table/artifacts")
OUT = os.path.expanduser("~/forever/forevercraft-web/src/data/artifacts.ts")
TIERS = ["common", "uncommon", "rare", "ornate", "exquisite", "mythical", "special"]
CAP = {"common": "Common", "uncommon": "Uncommon", "rare": "Rare",
       "ornate": "Ornate", "exquisite": "Exquisite", "mythical": "Mythical"}
TIER_WORDS = set(CAP.values())


def flat(node):
    if isinstance(node, str):
        return node
    if isinstance(node, list):
        return "".join(flat(n) for n in node)
    t = node.get("text", "")
    for e in node.get("extra", []):
        t += flat(e)
    return t


def item_type(item, cd):
    it = item.replace("minecraft:", "")
    if it.endswith(("helmet", "chestplate", "leggings", "boots")) or it == "elytra":
        return "Armor", None
    if it == "shield":
        return "Shield", None
    if "pickaxe" in it:
        return "Tool", "Pickaxe"
    if "shovel" in it:
        return "Tool", "Shovel"
    if it.endswith("hoe"):
        return "Tool", "Hoe"
    if it.endswith("axe"):
        return "Weapon", "Axe"
    if "sword" in it:
        return "Weapon", "Sword"
    if it == "mace":
        return "Weapon", "Mace"
    if it == "bow":
        return "Weapon", "Bow"
    if it == "crossbow":
        return "Weapon", "Crossbow"
    if it == "trident":
        return "Weapon", "Trident"
    if "spear" in it:
        return "Weapon", "Spear"
    if it == "fishing_rod":
        return "Weapon", "Fishing Rod"
    # trinkets rendered on sticks/shards — disambiguate via custom_data
    if cd.get("ring") or cd.get("is_ring"):
        return "Ring", None
    ab = str(cd.get("ability", "")).lower()
    if cd.get("healer") or cd.get("is_healer") or "heal" in ab:
        return "Healer", None
    if cd.get("accessory") or cd.get("is_accessory"):
        return "Accessory", None
    return "Accessory", None


def parse(path, tier_folder):
    d = json.load(open(path))
    try:
        entry = d["pools"][0]["entries"][0]
    except (KeyError, IndexError):
        return None
    comp = None
    for fn in entry.get("functions", []):
        if isinstance(fn, dict) and fn.get("function", "").endswith("set_components"):
            comp = fn.get("components")
            break
    if not comp:
        return None
    name = comp.get("minecraft:custom_name")
    if not name or not isinstance(name, str):
        return None
    cd = comp.get("minecraft:custom_data", {})
    if cd.get("is_artifact") is False:
        return None
    tier = CAP.get(cd.get("tier")) or CAP.get(tier_folder)
    if tier is None:  # 'special' folder — take tier from custom_data, else skip
        return None
    atype, subtype = item_type(entry.get("name", ""), cd)

    desc = ""
    abilities = []
    seen_tier_label = False
    for node in comp.get("minecraft:lore", []):
        txt = flat(node).strip()
        if not txt:
            continue
        first = txt.split()[0] if txt.split() else ""
        if not seen_tier_label and first in TIER_WORDS and txt.endswith("Artifact"):
            seen_tier_label = True
            continue
        is_flavor = isinstance(node, dict) and node.get("italic") and not node.get("extra")
        if is_flavor and not desc:
            desc = txt
        else:
            abilities.append(re.sub(r"\s+", " ", txt))
    return {"name": name, "tier": tier, "type": atype, "subtype": subtype,
            "description": desc, "abilities": abilities}


def main():
    arts = []
    for tier_folder in TIERS:
        folder = os.path.join(DP, tier_folder)
        if not os.path.isdir(folder):
            continue
        for fn in sorted(os.listdir(folder)):
            if not fn.endswith(".json"):
                continue
            rec = parse(os.path.join(folder, fn), tier_folder)
            if rec:
                arts.append(rec)
    # extracted, keyed by normalized name
    def norm(n):
        return n.replace("\\", "").strip().lower()

    extracted = {}
    for a in arts:
        extracted.setdefault(norm(a["name"]), a)

    # Merge with the existing committed catalog so nothing is lost: preserve every
    # old entry (cleaning malformed trailing-backslash names), enrich it with the
    # extracted description/abilities where the name matches, then append any
    # newly-extracted artifacts the old catalog didn't have.
    old_path = "/tmp/old-artifacts.ts"
    uniq = []
    used = set()
    if os.path.isfile(old_path):
        for line in open(old_path):
            if not re.match(r"\s*\{\s*id:", line):
                continue
            nm = re.search(r"name:\s*'((?:[^'\\]|\\.)*)'", line)
            if not nm:
                continue
            name = nm.group(1).replace("\\'", "'").replace("\\\\", "\\").rstrip("\\").strip()
            tr = re.search(r"tier:\s*'(\w+)'", line)
            tp = re.search(r"type:\s*'(\w+)'", line)
            sb = re.search(r"subtype:\s*'((?:[^'\\]|\\.)*)'", line)
            key = norm(name)
            if key in used:
                continue
            used.add(key)
            ex = extracted.get(key)
            uniq.append({
                "name": name,
                "tier": (CAP.get((tr.group(1) if tr else "").lower()) or (ex["tier"] if ex else tr.group(1) if tr else "Common")),
                "type": (tp.group(1) if tp else (ex["type"] if ex else "Weapon")),
                "subtype": (sb.group(1) if sb else (ex["subtype"] if ex else None)),
                "description": ex["description"] if ex else "",
                "abilities": ex["abilities"] if ex else [],
            })
    # append newly-extracted artifacts not present in the old catalog
    for key, a in extracted.items():
        if key not in used:
            used.add(key)
            uniq.append(a)

    def js(s):
        return json.dumps(s, ensure_ascii=False)

    lines = [
        "import type { Artifact, Tier, ArtifactType } from './types'",
        "",
        "export const TIERS: Array<Tier> = ['Common', 'Uncommon', 'Rare', 'Ornate', 'Exquisite', 'Mythical']",
        "export const TYPES: Array<ArtifactType> = ['Weapon', 'Armor', 'Accessory', 'Ring', 'Healer', 'Tool', 'Shield']",
        "",
        "// Auto-generated from the datapack artifact loot tables by scripts/extract-artifacts.py.",
        "// Do not hand-edit — re-run the script to regenerate.",
        "export const artifacts: Array<Artifact> = [",
    ]
    for i, a in enumerate(uniq, 1):
        sub = f", subtype: {js(a['subtype'])}" if a["subtype"] else ""
        ab = "[" + ", ".join(js(x) for x in a["abilities"]) + "]"
        lines.append(
            f"  {{ id: {i}, name: {js(a['name'])}, tier: {js(a['tier'])}, "
            f"type: {js(a['type'])}{sub}, description: {js(a['description'])}, abilities: {ab} }},"
        )
    lines.append("]")
    open(OUT, "w").write("\n".join(lines) + "\n")

    by_tier = {}
    by_type = {}
    for a in uniq:
        by_tier[a["tier"]] = by_tier.get(a["tier"], 0) + 1
        by_type[a["type"]] = by_type.get(a["type"], 0) + 1
    print(f"wrote {len(uniq)} artifacts -> {OUT}")
    print("by tier:", by_tier)
    print("by type:", by_type)
    print("with description:", sum(1 for a in uniq if a["description"]))
    print("with abilities:", sum(1 for a in uniq if a["abilities"]))


if __name__ == "__main__":
    main()
