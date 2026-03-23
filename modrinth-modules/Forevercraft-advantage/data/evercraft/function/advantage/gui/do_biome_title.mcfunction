# Macro: $(id) = 1-25 (maps to biome 0-24)
# Toggle/equip biome mastery title
# Run as the player

$scoreboard players set #bm_id adv.temp $(id)

# Power-of-2 lookup for bitfield check
scoreboard players set #bm_pow adv.temp 0
execute if score #bm_id adv.temp matches 1 run scoreboard players set #bm_pow adv.temp 1
execute if score #bm_id adv.temp matches 2 run scoreboard players set #bm_pow adv.temp 2
execute if score #bm_id adv.temp matches 3 run scoreboard players set #bm_pow adv.temp 4
execute if score #bm_id adv.temp matches 4 run scoreboard players set #bm_pow adv.temp 8
execute if score #bm_id adv.temp matches 5 run scoreboard players set #bm_pow adv.temp 16
execute if score #bm_id adv.temp matches 6 run scoreboard players set #bm_pow adv.temp 32
execute if score #bm_id adv.temp matches 7 run scoreboard players set #bm_pow adv.temp 64
execute if score #bm_id adv.temp matches 8 run scoreboard players set #bm_pow adv.temp 128
execute if score #bm_id adv.temp matches 9 run scoreboard players set #bm_pow adv.temp 256
execute if score #bm_id adv.temp matches 10 run scoreboard players set #bm_pow adv.temp 512
execute if score #bm_id adv.temp matches 11 run scoreboard players set #bm_pow adv.temp 1024
execute if score #bm_id adv.temp matches 12 run scoreboard players set #bm_pow adv.temp 2048
execute if score #bm_id adv.temp matches 13 run scoreboard players set #bm_pow adv.temp 4096
execute if score #bm_id adv.temp matches 14 run scoreboard players set #bm_pow adv.temp 8192
execute if score #bm_id adv.temp matches 15 run scoreboard players set #bm_pow adv.temp 16384
execute if score #bm_id adv.temp matches 16 run scoreboard players set #bm_pow adv.temp 32768
execute if score #bm_id adv.temp matches 17 run scoreboard players set #bm_pow adv.temp 65536
execute if score #bm_id adv.temp matches 18 run scoreboard players set #bm_pow adv.temp 131072
execute if score #bm_id adv.temp matches 19 run scoreboard players set #bm_pow adv.temp 262144
execute if score #bm_id adv.temp matches 20 run scoreboard players set #bm_pow adv.temp 524288
execute if score #bm_id adv.temp matches 21 run scoreboard players set #bm_pow adv.temp 1048576
execute if score #bm_id adv.temp matches 22 run scoreboard players set #bm_pow adv.temp 2097152
execute if score #bm_id adv.temp matches 23 run scoreboard players set #bm_pow adv.temp 4194304
execute if score #bm_id adv.temp matches 24 run scoreboard players set #bm_pow adv.temp 8388608
execute if score #bm_id adv.temp matches 25 run scoreboard players set #bm_pow adv.temp 16777216

# Check bit: (bm.titles / pow) % 2
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp

# Reject if locked
execute if score #bm_check adv.temp matches 0 run tellraw @s [{text:"[Biome Titles] ",color:"dark_green"},{text:"Title locked! Reach Master in this biome first.",color:"red"}]
execute if score #bm_check adv.temp matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute if score #bm_check adv.temp matches 0 run return 0

# Toggle: if already active, deactivate
scoreboard players set #cc_did adv.temp 0
execute if score @s bm.title = #bm_id adv.temp run scoreboard players set #cc_did adv.temp 1
execute if score #cc_did adv.temp matches 1 run scoreboard players set @s bm.title 0
execute if score #cc_did adv.temp matches 1 run team leave @s
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Biome Titles] ",color:"dark_green"},{text:"Title removed.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_biome_titles
execute if score #cc_did adv.temp matches 1 run return 0

# Clear all other titles for mutual exclusivity, then activate
function evercraft:titles/clear_all
scoreboard players operation @s bm.title = #bm_id adv.temp
function evercraft:biome_mastery/titles/apply
tellraw @s [{text:"[Biome Titles] ",color:"dark_green"},{text:"Title applied!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_biome_titles
