# ============================================================
# Quick Stash — Remote barrel finder (macro, cross-dimension)
# Run as: player (with hs.remote_stash tag)
# Args: slot (inventory slot), category (container category)
# Searches from hearthstone position instead of player position
# ============================================================

# Check keep — player wants to keep this category
$execute if entity @s[tag=hs.keep_$(category)] run return 0

# Try to find a container with matching category near hearthstone (64 block radius)
scoreboard players set #hs_insert hs.temp 0

# Search all dimensions for the StashTarget marker (only one will exist)
$execute in minecraft:overworld at @e[type=marker,tag=HS.StashTarget,limit=1] positioned as @e[type=marker,tag=HS.Stash,distance=..64,nbt={data:{category:"$(category)"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1
$execute in minecraft:the_nether at @e[type=marker,tag=HS.StashTarget,limit=1] positioned as @e[type=marker,tag=HS.Stash,distance=..64,nbt={data:{category:"$(category)"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1
$execute in minecraft:the_end at @e[type=marker,tag=HS.StashTarget,limit=1] positioned as @e[type=marker,tag=HS.Stash,distance=..64,nbt={data:{category:"$(category)"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1

# Primary container full or not found — try overflow fallback
$execute in minecraft:overworld at @e[type=marker,tag=HS.StashTarget,limit=1] positioned as @e[type=marker,tag=HS.Stash,distance=..64,nbt={data:{category:"overflow"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1
$execute in minecraft:the_nether at @e[type=marker,tag=HS.StashTarget,limit=1] positioned as @e[type=marker,tag=HS.Stash,distance=..64,nbt={data:{category:"overflow"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1
$execute in minecraft:the_end at @e[type=marker,tag=HS.StashTarget,limit=1] positioned as @e[type=marker,tag=HS.Stash,distance=..64,nbt={data:{category:"overflow"}},limit=1] align xyz store result score #hs_insert hs.temp run function evercraft:housing/stash/try_insert {slot:"$(slot)"}
execute if score #hs_insert hs.temp matches 1 run return 1

# No space anywhere — increment failed counter
scoreboard players add @s hs.failed 1
