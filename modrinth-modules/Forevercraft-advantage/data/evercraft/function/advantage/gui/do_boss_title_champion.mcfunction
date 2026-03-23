# Toggle/equip the World Boss Champion title (ID 45)
# Requires all 11 bosses killed at least once
# Run as the player

# Check if all 11 bosses killed
scoreboard players set #wb_champ_check ec.var 0
execute if score @s wb.k1 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k2 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k3 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k4 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k5 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k6 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k7 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k8 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k9 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k10 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k11 matches 1.. run scoreboard players add #wb_champ_check ec.var 1

# Reject if not all killed
execute unless score #wb_champ_check ec.var matches 11 run tellraw @s [{text:"[Boss Titles] ",color:"dark_red"},{text:"Defeat all 11 World Bosses to earn this title!",color:"red"}]
execute unless score #wb_champ_check ec.var matches 11 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute unless score #wb_champ_check ec.var matches 11 run return 0

# Toggle: if already active, deactivate
scoreboard players set #cc_did adv.temp 0
execute if score @s wb.title matches 45 run scoreboard players set #cc_did adv.temp 1
execute if score #cc_did adv.temp matches 1 run scoreboard players set @s wb.title 0
execute if score #cc_did adv.temp matches 1 run function evercraft:bosses/titles/leave_teams
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Boss Titles] ",color:"dark_red"},{text:"Title removed.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_boss_titles
execute if score #cc_did adv.temp matches 1 run return 0

# Clear all other titles for mutual exclusivity, then activate champion title
function evercraft:titles/clear_all
scoreboard players set @s wb.title 45
function evercraft:bosses/titles/apply
tellraw @s [{text:"[Boss Titles] ",color:"dark_red"},{text:"World Boss Champion title applied!",color:"gold",bold:true}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_boss_titles
