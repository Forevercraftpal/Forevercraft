# Tomb Revive — Check if right-clicking player is a qualifying healer
# @s = player who right-clicked the grave (from check_interact UUID match)
# #tomb_g_uuid0-3 ec.temp = grave owner UUID (set by tick_marker)
# Returns 1 if revive started, 0 otherwise

# === CHECK: Not the grave owner (let offer.mcfunction handle "walk closer") ===
execute if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run return 0

# === CHECK: Not already channeling a revive ===
execute if score @s ec.hl_revive matches 1.. run return 0

# === CHECK: Not in healer lockout ===
execute if score @s ec.hl_locked matches 1.. run return 0

# === CHECK: Holding a healer artifact ===
execute unless data entity @s SelectedItem.components."minecraft:custom_data".healer run return 0

# === CHECK: Artifact tier is Rare+ — set #revive_tier ec.temp ===
scoreboard players set #revive_tier ec.temp 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{tier:"rare"} run scoreboard players set #revive_tier ec.temp 1
execute if data entity @s SelectedItem.components."minecraft:custom_data"{tier:"ornate"} run scoreboard players set #revive_tier ec.temp 2
execute if data entity @s SelectedItem.components."minecraft:custom_data"{tier:"exquisite"} run scoreboard players set #revive_tier ec.temp 3
execute if data entity @s SelectedItem.components."minecraft:custom_data"{tier:"mythical"} run scoreboard players set #revive_tier ec.temp 4
execute if score #revive_tier ec.temp matches 0 run tellraw @s [{"text":"⚔ ","color":"gray"},{"text":"Only a Rare or higher healing artifact can channel revival.","color":"gray"}]
execute if score #revive_tier ec.temp matches 0 run return 0

# === CHECK: Healer affinity stage >= 3 (Rare) ===
execute unless score @s ec.affs_hl matches 3.. run tellraw @s [{"text":"⚔ ","color":"gray"},{"text":"Your healing affinity is not strong enough to channel revival.","color":"gray"}]
execute unless score @s ec.affs_hl matches 3.. run return 0

# === CHECK: Grave not bundled, pending, or already being revived ===
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled,distance=..3,limit=1] run return 0
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending,distance=..3,limit=1] run tellraw @s [{"text":"⚔ ","color":"gray"},{"text":"This soul already has a pending companion offer.","color":"gray"}]
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending,distance=..3,limit=1] run return 0
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_reviving,distance=..3,limit=1] run tellraw @s [{"text":"⚔ ","color":"gray"},{"text":"This soul is already being revived.","color":"gray"}]
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_reviving,distance=..3,limit=1] run return 0

# === CHECK: Owner is online and alive ===
scoreboard players set #revive_owner_found ec.temp 0
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run scoreboard players set #revive_owner_found ec.temp 1
execute if score #revive_owner_found ec.temp matches 0 run tellraw @s [{"text":"⚔ ","color":"gray"},{"text":"Their soul cannot be reached... they must return to the world first.","color":"gray"}]
execute if score #revive_owner_found ec.temp matches 0 run return 0

# === ALL CHECKS PASSED — Start revive channel ===
function evercraft:tomb/revive/start_channel
return 1
