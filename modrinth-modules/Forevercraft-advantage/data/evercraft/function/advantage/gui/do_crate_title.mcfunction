# Run as the player — Macro: $(id) = title ID (1-18)
# Toggle a crate title on/off

# --- Unlock check: compute 2^(id-1), check (cc_titles / pow) % 2 ---
$scoreboard players set #cc_id adv.temp $(id)
scoreboard players set #cc_pow adv.temp 0
execute if score #cc_id adv.temp matches 1 run scoreboard players set #cc_pow adv.temp 1
execute if score #cc_id adv.temp matches 2 run scoreboard players set #cc_pow adv.temp 2
execute if score #cc_id adv.temp matches 3 run scoreboard players set #cc_pow adv.temp 4
execute if score #cc_id adv.temp matches 4 run scoreboard players set #cc_pow adv.temp 8
execute if score #cc_id adv.temp matches 5 run scoreboard players set #cc_pow adv.temp 16
execute if score #cc_id adv.temp matches 6 run scoreboard players set #cc_pow adv.temp 32
execute if score #cc_id adv.temp matches 7 run scoreboard players set #cc_pow adv.temp 64
execute if score #cc_id adv.temp matches 8 run scoreboard players set #cc_pow adv.temp 128
execute if score #cc_id adv.temp matches 9 run scoreboard players set #cc_pow adv.temp 256
execute if score #cc_id adv.temp matches 10 run scoreboard players set #cc_pow adv.temp 512
execute if score #cc_id adv.temp matches 11 run scoreboard players set #cc_pow adv.temp 1024
execute if score #cc_id adv.temp matches 12 run scoreboard players set #cc_pow adv.temp 2048
execute if score #cc_id adv.temp matches 13 run scoreboard players set #cc_pow adv.temp 4096
execute if score #cc_id adv.temp matches 14 run scoreboard players set #cc_pow adv.temp 8192
execute if score #cc_id adv.temp matches 15 run scoreboard players set #cc_pow adv.temp 16384
execute if score #cc_id adv.temp matches 16 run scoreboard players set #cc_pow adv.temp 32768
execute if score #cc_id adv.temp matches 17 run scoreboard players set #cc_pow adv.temp 65536
execute if score #cc_id adv.temp matches 18 run scoreboard players set #cc_pow adv.temp 131072

scoreboard players operation #cc_check adv.temp = @s adv.cc_titles
scoreboard players operation #cc_check adv.temp /= #cc_pow adv.temp
scoreboard players operation #cc_check adv.temp %= #2 adv.temp

# Reject if locked
execute if score #cc_check adv.temp matches 0 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You haven't unlocked this title yet!",color:"red"}]
execute if score #cc_check adv.temp matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute if score #cc_check adv.temp matches 0 run return 0

# --- Toggle logic ---
# Use #cc_did flag to detect deactivation (set flag BEFORE clearing score)
scoreboard players set #cc_did adv.temp 0
$execute if score @s adv.cc_title matches $(id) run scoreboard players set #cc_did adv.temp 1
$execute if score @s adv.cc_title matches $(id) run scoreboard players set @s adv.cc_title 0

# If we deactivated, respond and exit
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/cosmetics/leave_crate_teams
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Title removed.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_crate_cosmetics
execute if score #cc_did adv.temp matches 1 run return 0

# Clear all other titles for mutual exclusivity, then set new title
function evercraft:titles/clear_all
$scoreboard players set @s adv.cc_title $(id)

# Apply team
function evercraft:advantage/cosmetics/crate_title_apply

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Title applied!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_crate_cosmetics
