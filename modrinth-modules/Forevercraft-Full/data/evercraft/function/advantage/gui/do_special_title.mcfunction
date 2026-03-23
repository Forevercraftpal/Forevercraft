# Run as the player — Macro: $(id) = 1-7
# Toggle/equip special title (Dream Journal or Reputation)
$scoreboard players set #sp_id adv.temp $(id)

# Power-of-2 lookup for bit check (bit = id-1)
scoreboard players set #sp_pow adv.temp 0
execute if score #sp_id adv.temp matches 1 run scoreboard players set #sp_pow adv.temp 1
execute if score #sp_id adv.temp matches 2 run scoreboard players set #sp_pow adv.temp 2
execute if score #sp_id adv.temp matches 3 run scoreboard players set #sp_pow adv.temp 4
execute if score #sp_id adv.temp matches 4 run scoreboard players set #sp_pow adv.temp 8
execute if score #sp_id adv.temp matches 5 run scoreboard players set #sp_pow adv.temp 16
execute if score #sp_id adv.temp matches 6 run scoreboard players set #sp_pow adv.temp 32
execute if score #sp_id adv.temp matches 7 run scoreboard players set #sp_pow adv.temp 64

# Check bit: (ec.special_titles / pow) % 2
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp

# Reject if locked
execute if score #sp_check adv.temp matches 0 run tellraw @s [{text:"[Titles] ",color:"gold"},{text:"Title locked!",color:"red"}]
execute if score #sp_check adv.temp matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute if score #sp_check adv.temp matches 0 run return 0

# Toggle: if already active, deactivate
scoreboard players set #cc_did adv.temp 0
execute if score @s ec.special_title = #sp_id adv.temp run scoreboard players set #cc_did adv.temp 1
execute if score #cc_did adv.temp matches 1 run scoreboard players set @s ec.special_title 0
execute if score #cc_did adv.temp matches 1 run team leave @s
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Titles] ",color:"gold"},{text:"Title removed.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_special_titles
execute if score #cc_did adv.temp matches 1 run return 0

# Clear all other titles for mutual exclusivity, then activate
function evercraft:titles/clear_all
scoreboard players operation @s ec.special_title = #sp_id adv.temp
function evercraft:titles/apply_special
tellraw @s [{text:"[Titles] ",color:"gold"},{text:"Title applied!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_special_titles
