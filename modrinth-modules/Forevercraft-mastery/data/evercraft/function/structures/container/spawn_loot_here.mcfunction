# Spawn a loot barrel and fill with structure-appropriate loot
# Locked during animation — unlocked by crate_anim/finish/structure
setblock ~ ~ ~ minecraft:barrel[facing=up]{lock:{items:"minecraft:air"}}

# Verify barrel was actually placed (setblock can silently fail in some contexts)
execute unless block ~ ~ ~ minecraft:barrel run return 0

# ============================================================================
# OPT: Macro dispatch — 22 struct_id→path mappings + 1 macro call
# replaces 132-line struct_id × tier dispatch table
# ============================================================================

# Store tier for macro
execute store result storage evercraft:temp tier int 1 run scoreboard players get @s cf.tier

# Map struct_id → loot table path
execute if score @s cf.struct_id matches 1 run data modify storage evercraft:temp path set value "structures/structures/ancient_city"
execute if score @s cf.struct_id matches 2 run data modify storage evercraft:temp path set value "structures/structures/end_city"
execute if score @s cf.struct_id matches 3 run data modify storage evercraft:temp path set value "structures/structures/trial_chambers"
execute if score @s cf.struct_id matches 4 run data modify storage evercraft:temp path set value "structures/structures/stronghold"
execute if score @s cf.struct_id matches 5 run data modify storage evercraft:temp path set value "structures/structures/mansion"
execute if score @s cf.struct_id matches 6 run data modify storage evercraft:temp path set value "structures/structures/bastion"
execute if score @s cf.struct_id matches 7 run data modify storage evercraft:temp path set value "structures/structures/fortress"
execute if score @s cf.struct_id matches 8 run data modify storage evercraft:temp path set value "structures/structures/monument"
execute if score @s cf.struct_id matches 9 run data modify storage evercraft:temp path set value "structures/structures/desert_pyramid"
execute if score @s cf.struct_id matches 10 run data modify storage evercraft:temp path set value "structures/structures/jungle_pyramid"
execute if score @s cf.struct_id matches 11 run data modify storage evercraft:temp path set value "structures/structures/shipwreck"
execute if score @s cf.struct_id matches 12 run data modify storage evercraft:temp path set value "structures/structures/ocean_ruins"
execute if score @s cf.struct_id matches 13 run data modify storage evercraft:temp path set value "structures/structures/igloo"
execute if score @s cf.struct_id matches 14 run data modify storage evercraft:temp path set value "structures/structures/outpost"
execute if score @s cf.struct_id matches 15 run data modify storage evercraft:temp path set value "structures/structures/trail_ruins"
execute if score @s cf.struct_id matches 16 run data modify storage evercraft:temp path set value "structures/structures/village"
execute if score @s cf.struct_id matches 17 run data modify storage evercraft:temp path set value "structures/structures/mineshaft"
execute if score @s cf.struct_id matches 18 run data modify storage evercraft:temp path set value "structures/structures/ruined_portal"
execute if score @s cf.struct_id matches 19 run data modify storage evercraft:temp path set value "structures/structures/dungeon"
execute if score @s cf.struct_id matches 20 run data modify storage evercraft:temp path set value "structures/unknown"
execute if score @s cf.struct_id matches 21 run data modify storage evercraft:temp path set value "structures/structures/trial_chambers"
execute if score @s cf.struct_id matches 22 run data modify storage evercraft:temp path set value "structures/structures/trial_chambers"

# Insert loot via macro: $loot insert ~ ~ ~ loot evercraft:$(path)/tier$(tier)
function evercraft:structures/container/insert_loot with storage evercraft:temp

# ============================================================================
# ANNOUNCE TIER — Only here (after loot spawns) to prevent spam on re-opens
# Pre-set bonus flag so announce_tier can consolidate messages into one line
# ============================================================================
scoreboard players set #has_bonus cf.temp 1
function evercraft:structures/interact/announce_tier

# ============================================================================
# BONUS SYSTEMS
# ============================================================================

# Bonus loot
function evercraft:structures/container/add_bonus_loot

# 1% chance: Totem of Summoning bonus
execute align xyz run function evercraft:bosses/totem/roll_crate_drop

# Shuffle barrel contents into random slots (items spawn packed at top from loot insert)
function evercraft:structures/container/shuffle_barrel

# Grant XP based on tier (with actionbar feedback)
execute if score @s cf.tier matches 1 run experience add @s 10 points
execute if score @s cf.tier matches 1 run title @s actionbar {text:"+10 XP",color:"green"}
execute if score @s cf.tier matches 2 run experience add @s 25 points
execute if score @s cf.tier matches 2 run title @s actionbar {text:"+25 XP",color:"green"}
execute if score @s cf.tier matches 3 run experience add @s 50 points
execute if score @s cf.tier matches 3 run title @s actionbar {text:"+50 XP",color:"aqua"}
execute if score @s cf.tier matches 4 run experience add @s 100 points
execute if score @s cf.tier matches 4 run title @s actionbar {text:"+100 XP",color:"dark_purple"}
execute if score @s cf.tier matches 5 run experience add @s 200 points
execute if score @s cf.tier matches 5 run title @s actionbar {text:"+200 XP",color:"light_purple"}
execute if score @s cf.tier matches 6 run experience add @s 500 points
execute if score @s cf.tier matches 6 run title @s actionbar {text:"+500 XP",color:"gold"}

# Summon invisible marker to track this loot barrel (90s despawn)
# align xyz to ensure marker is at block corner, not fractional position
# OPT: Lifetime on scoreboard (not NBT) — avoids per-tick NBT read+write in tick_lifetime
execute align xyz run summon marker ~ ~ ~ {Tags:["cf.loot_barrel","cf.temp_container"]}
execute align xyz run scoreboard players set @e[type=marker,tag=cf.temp_container,distance=..1,limit=1,sort=nearest] cf.container_life 1800

# ============================================================================
# MARK POSITION AS LOOTED
# This MUST happen here (after successful spawn) not earlier!
# If dream gated, this function never runs, so player can retry later
# ============================================================================
function evercraft:structures/storage/mark_looted

# ============================================================================
# PARTY COMBO: Rally Cry — Explorer 15+ in party triggers Dream Rate buff
# ============================================================================
execute if score @s ec.party_id matches 1.. at @s run function evercraft:party/combos/rally_cry

# ============================================================================
# CRATE ANIMATION — Spawn visual display based on tier
# The barrel is locked during animation, unlocked by finish function
# align xyz ensures animation spawns centered on the barrel block, not at fractional pos
# ============================================================================
execute align xyz if score @s cf.tier matches 1 run function evercraft:crate_anim/spawn_display {tier:"common",system_tag:"structure_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODU4Mzc1MSwKICAicHJvZmlsZUlkIiA6ICJiM2E1M2VlMDgwMmI0NzE5OGVkM2VhMjRmYjZmNmQ3YSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOZXRhbnlhaHVQdlAiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc1MWZkOWU4OWRiYmFhNDFmODJjM2FhNDQ0NDRlZTcyMjFiY2I3MGIxMDBjNjg0NWM2YjkwOWMzZmVhMTEyYiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}
execute align xyz if score @s cf.tier matches 2 run function evercraft:crate_anim/spawn_display {tier:"uncommon",system_tag:"structure_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODYwMzk4OSwKICAicHJvZmlsZUlkIiA6ICIxNTUyNmU1OGZhOWE0NjBmODhhNmZhNjk1M2RlNjgzNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQaWVkcml0YTE3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzYWE4NmE3NWFlMGQwZGIyNDUxNjIxMTg0MzhjYzRmYWFiYTE0ZDg4MWIwOGY1YjU0ODhkNTJjYTFkMjc5MjMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.tier matches 3 run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"structure_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODYyMDUzMiwKICAicHJvZmlsZUlkIiA6ICI2NGRiNmMwNTliOTk0OTM2YTY0M2QwODEwODE0ZmJkMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJUaGVTaWx2ZXJEcmVhbXMiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2YmZhOWE0YWEwYTRmMTIwZDQ2NDgyOGZlY2E3OWM5MjYzNjk2MDRhOWU1Nzk2NTlkOTUwZDZiMTk1MzIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
execute align xyz if score @s cf.tier matches 4 run function evercraft:crate_anim/spawn_display {tier:"ornate",system_tag:"structure_crate",plot_start:20,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODY0NTQzOSwKICAicHJvZmlsZUlkIiA6ICI3YTVkYmRlNDk0NWU0YTE4Yjg2OWY1MGY1NTJjNjlkYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJCdWtraXRBUEkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmM4MDNkNGI5OTc1MGFiZTc0NzY2ZWZiMjYwZjI2YmY0Mjk0MTlhZWVlYWRlMWNkMTE5MjU1NzZmOTY4OTRhMiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}
execute align xyz if score @s cf.tier matches 5 run function evercraft:crate_anim/spawn_display {tier:"exquisite",system_tag:"structure_crate",plot_start:25,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODY3NTU1NiwKICAicHJvZmlsZUlkIiA6ICJhYjNkNTgwMjVkOWM0NTcyODNkNTFlYTcwYTY4N2U1NiIsCiAgInByb2ZpbGVOYW1lIiA6ICJsdWN5X2ludGhlc2t5XyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9jZmRmZjQwZmY5OThhYzIyNGNhYzYzM2FlMmJlODBjZThmNzc1YTA1ZDY1ODk4ODU0MmMwYTQ2ZDUwYzI5NDc1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
execute align xyz if score @s cf.tier matches 6 run function evercraft:crate_anim/spawn_display {tier:"mythical",system_tag:"structure_crate",plot_start:30,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODcxMzA2OSwKICAicHJvZmlsZUlkIiA6ICJlZGUyYzdhMGFjNjM0MTNiYjA5ZDNmMGJlZTllYzhlYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJ0aGVEZXZKYWRlIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzZmNDQ2NTBlNWM0OTE3YzRjMGFjNWNjMjI0MzA1YTY4ODIxM2ZhNmNiMzdlMmUxMjdiYzcyNTAyYWYwMjJiNCIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}

# OPT: Copy tier score directly instead of 6 conditional sets
execute align xyz run scoreboard players operation @n[type=armor_stand,tag=ec.crate_anim,tag=ec.structure_crate,distance=..1] ec.crate_tier = @s cf.tier
