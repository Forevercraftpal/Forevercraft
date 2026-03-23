# ============================================================
# Quick Stash — Categorize + route one inventory slot (macro)
# Run as: player (with hs.stashing tag)
# Args: slot (inventory slot number 9-35)
# ============================================================

# Skip empty slots
$execute unless items entity @s container.$(slot) * run return 0

# Never stash the label item itself
$execute if items entity @s container.$(slot) *[custom_data~{stash_label:true}] run return 0

# === Category detection (first match wins) ===

# Artifacts (custom_data check — before item tags)
$execute if items entity @s container.$(slot) *[custom_data~{is_artifact:true}] run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"artifacts"}

# Potions (before weapons — catch potion items early)
$execute if items entity @s container.$(slot) #evercraft:stash/potions run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"potions"}

# Weapons (before tools — swords are in both)
$execute if items entity @s container.$(slot) #evercraft:stash/weapons run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"weapons"}

# Tools
$execute if items entity @s container.$(slot) #evercraft:stash/tools run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"tools"}

# Armor
$execute if items entity @s container.$(slot) #evercraft:stash/armor run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"armor"}

# Food
$execute if items entity @s container.$(slot) #evercraft:stash/food run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"food"}

# Mob Drops (before materials — many moved from materials)
$execute if items entity @s container.$(slot) #evercraft:stash/mob_drops run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"mob_drops"}

# Garden (before blocks — plants could be blocks)
$execute if items entity @s container.$(slot) #evercraft:stash/garden run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"garden"}

# Redstone (before materials — redstone dust moved from materials)
$execute if items entity @s container.$(slot) #evercraft:stash/redstone run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"redstone"}

# Amenities (before blocks — furniture items)
$execute if items entity @s container.$(slot) #evercraft:stash/amenities run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"amenities"}

# Materials
$execute if items entity @s container.$(slot) #evercraft:stash/materials run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"materials"}

# Blocks
$execute if items entity @s container.$(slot) #evercraft:stash/blocks run return run function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"blocks"}

# No category match → overflow
$function evercraft:housing/stash/find_barrel {slot:"$(slot)",category:"overflow"}
