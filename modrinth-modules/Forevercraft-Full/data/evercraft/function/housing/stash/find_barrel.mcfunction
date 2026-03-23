# ============================================================
# Quick Stash — Find container for category + insert item (macro)
# Run as: player (with hs.stashing tag), at player
# Args: slot (inventory slot), category (container category)
# ============================================================

# Check keep — player wants to keep this category
$execute if entity @s[tag=hs.keep_$(category)] run return 0

# Remote mode: delegate to cross-dimension barrel finder
$execute if entity @s[tag=hs.remote_stash] run return run function evercraft:housing/stash/find_barrel_remote {slot:"$(slot)",category:"$(category)"}

# Try to find a container with matching category within 32 blocks
scoreboard players set #hs_insert hs.temp 0
$execute at @s positioned as @e[type=marker,tag=HS.Stash,distance=..32,nbt={data:{category:"$(category)"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1

# Primary container full or not found → try overflow fallback
$execute at @s positioned as @e[type=marker,tag=HS.Stash,distance=..32,nbt={data:{category:"overflow"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1

# No space anywhere — increment failed counter
scoreboard players add @s hs.failed 1
