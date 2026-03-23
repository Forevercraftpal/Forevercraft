# Tomb Revive — Start Channel
# @s = healer player who passed all checks
# #tomb_g_uuid0-3 ec.temp = grave owner UUID
# #revive_tier ec.temp = 1:rare, 2:ornate, 3:exquisite, 4:mythical

# === TAG THE GRAVE MARKER ===
execute as @e[type=marker,tag=ec.tomb_data,distance=..3,limit=1] run tag @s add ec.tomb_reviving

# === STORE HEALER UUID ON MARKER (reuse finder slots) ===
execute as @e[type=marker,tag=ec.tomb_reviving,distance=..3,limit=1] run scoreboard players operation @s ec.tomb_finder0 = #tomb_click_uuid0 ec.temp
execute as @e[type=marker,tag=ec.tomb_reviving,distance=..3,limit=1] run scoreboard players operation @s ec.tomb_finder1 = #tomb_click_uuid1 ec.temp
execute as @e[type=marker,tag=ec.tomb_reviving,distance=..3,limit=1] run scoreboard players operation @s ec.tomb_finder2 = #tomb_click_uuid2 ec.temp
execute as @e[type=marker,tag=ec.tomb_reviving,distance=..3,limit=1] run scoreboard players operation @s ec.tomb_finder3 = #tomb_click_uuid3 ec.temp

# === SET CHANNEL DURATION BY TIER ===
# Rare=14 (7s), Ornate=11 (5.5s), Exquisite=8 (4s), Mythical=6 (3s)
execute if score #revive_tier ec.temp matches 1 run scoreboard players set @s ec.hl_revive 14
execute if score #revive_tier ec.temp matches 2 run scoreboard players set @s ec.hl_revive 11
execute if score #revive_tier ec.temp matches 3 run scoreboard players set @s ec.hl_revive 8
execute if score #revive_tier ec.temp matches 4 run scoreboard players set @s ec.hl_revive 6

# === STORE GRAVE ID ON HEALER ===
scoreboard players operation @s ec.hl_revive_id = @e[type=marker,tag=ec.tomb_reviving,distance=..3,limit=1] ec.tomb_id

# === APPLY EFFECTS ===
# Slowness V + Blindness for full channel + 1s buffer
# Duration in ticks: rare=160, ornate=130, exquisite=100, mythical=80
execute if score #revive_tier ec.temp matches 1 run effect give @s minecraft:slowness 8 4 true
execute if score #revive_tier ec.temp matches 1 run effect give @s minecraft:blindness 8 0 true
execute if score #revive_tier ec.temp matches 2 run effect give @s minecraft:slowness 7 4 true
execute if score #revive_tier ec.temp matches 2 run effect give @s minecraft:blindness 7 0 true
execute if score #revive_tier ec.temp matches 3 run effect give @s minecraft:slowness 5 4 true
execute if score #revive_tier ec.temp matches 3 run effect give @s minecraft:blindness 5 0 true
execute if score #revive_tier ec.temp matches 4 run effect give @s minecraft:slowness 4 4 true
execute if score #revive_tier ec.temp matches 4 run effect give @s minecraft:blindness 4 0 true

# === SOUND ===
playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 0.6 0.5
playsound minecraft:block.sculk_catalyst.bloom ambient @a[distance=..16] ~ ~ ~ 0.5 1.2

# === MESSAGE TO HEALER ===
tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"gold"},{"text":"Channeling revival... stay near the grave.","color":"gold"},{"text":"\n"}]

# === MESSAGE TO OWNER ===
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"gold"},{"text":"A healer is channeling your revival... you will be brought back to where you fell.","color":"gold"},{"text":"\n"}]
