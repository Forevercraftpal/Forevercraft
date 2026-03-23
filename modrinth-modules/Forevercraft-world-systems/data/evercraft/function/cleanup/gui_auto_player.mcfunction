# Auto GUI Cleanup — Per-player sweep
# Kills orphaned GUI entities in the 6..15 block range (by known GUI tags only)
# Entities within 6 blocks are preserved (could be an active menu)
# Silent — no sound or message
# IMPORTANT: Only targets entities with GUI system tags — NOT crates, village names, etc.

# --- Forevercraft Codex (Adv.*) ---
kill @e[tag=Adv.MenuElement,distance=6..15]
kill @e[tag=Adv.MenuAnchor,distance=6..15]
kill @e[tag=Adv.MenuBG,distance=6..15]

# --- Craftforever Codex (CF.*) ---
kill @e[tag=CF.MenuElement,distance=6..15]
kill @e[tag=CF.MenuAnchor,distance=6..15]
kill @e[tag=CF.MenuBG,distance=6..15]

# --- Companion / Pet Menu V2 ---
kill @e[tag=companion.menuelement,distance=6..15]
kill @e[tag=companion.menuanchor,distance=6..15]
kill @e[tag=companion.infooverlay,distance=6..15]

# --- Guidestone Menu ---
kill @e[tag=ec.gs_menu_el,distance=6..15]
kill @e[tag=ec.gs_slot_el,distance=6..15]

# --- Friends GUI ---
kill @e[tag=ec.fr_gui_el,distance=6..15]

# --- Showcase GUI ---
kill @e[tag=ec.sc_gui_el,distance=6..15]
kill @e[tag=ec.sc_picker_el,distance=6..15]

# --- Guild Menu ---
kill @e[tag=ec.guild_menu_el,distance=6..15]

# --- Housing / Satchel / Laborers ---
kill @e[tag=HS.SatchelEl,distance=6..15]
kill @e[tag=HS.MenuEl,distance=6..15]
kill @e[tag=HS.LaborersEl,distance=6..15]

# --- Cooking GUI ---
kill @e[tag=CK.MenuEl,distance=6..15]
kill @e[tag=CK.MiniEl,distance=6..15]

# --- Pantry GUI ---
kill @e[tag=ec.pantry_el,distance=6..15]

# --- Chrono Shard GUI ---
kill @e[tag=ec.cs_gui,distance=6..15]

# --- Bestiary pages ---
kill @e[tag=Bs.PageContent,distance=6..15]
kill @e[tag=Bs.PageHeader,distance=6..15]
