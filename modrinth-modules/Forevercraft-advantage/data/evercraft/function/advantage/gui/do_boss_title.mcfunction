# Macro: $(boss_id) = 1-11
# Toggle/equip the highest available boss title for this boss
# Run as the player

$scoreboard players set #wb_boss_id ec.var $(boss_id)

# Copy the relevant kill count to temp
scoreboard players set #wb_kills ec.var 0
execute if score #wb_boss_id ec.var matches 1 run scoreboard players operation #wb_kills ec.var = @s wb.k1
execute if score #wb_boss_id ec.var matches 2 run scoreboard players operation #wb_kills ec.var = @s wb.k2
execute if score #wb_boss_id ec.var matches 3 run scoreboard players operation #wb_kills ec.var = @s wb.k3
execute if score #wb_boss_id ec.var matches 4 run scoreboard players operation #wb_kills ec.var = @s wb.k4
execute if score #wb_boss_id ec.var matches 5 run scoreboard players operation #wb_kills ec.var = @s wb.k5
execute if score #wb_boss_id ec.var matches 6 run scoreboard players operation #wb_kills ec.var = @s wb.k6
execute if score #wb_boss_id ec.var matches 7 run scoreboard players operation #wb_kills ec.var = @s wb.k7
execute if score #wb_boss_id ec.var matches 8 run scoreboard players operation #wb_kills ec.var = @s wb.k8
execute if score #wb_boss_id ec.var matches 9 run scoreboard players operation #wb_kills ec.var = @s wb.k9
execute if score #wb_boss_id ec.var matches 10 run scoreboard players operation #wb_kills ec.var = @s wb.k10
execute if score #wb_boss_id ec.var matches 11 run scoreboard players operation #wb_kills ec.var = @s wb.k11

# Reject if locked (less than 10 kills)
execute if score #wb_kills ec.var matches ..9 run tellraw @s [{text:"[Boss Titles] ",color:"dark_red"},{text:"You need at least 10 kills to unlock a title!",color:"red"}]
execute if score #wb_kills ec.var matches ..9 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
execute if score #wb_kills ec.var matches ..9 run return 0

# Determine highest tier (1=Slayer@10, 2=Conqueror@25, 3=Vanquisher@50, 4=Nemesis@100)
scoreboard players set #wb_tier ec.var 1
execute if score #wb_kills ec.var matches 25.. run scoreboard players set #wb_tier ec.var 2
execute if score #wb_kills ec.var matches 50.. run scoreboard players set #wb_tier ec.var 3
execute if score #wb_kills ec.var matches 100.. run scoreboard players set #wb_tier ec.var 4

# Calculate title ID: (boss_id - 1) * 4 + tier
scoreboard players operation #wb_title_id ec.var = #wb_boss_id ec.var
scoreboard players remove #wb_title_id ec.var 1
scoreboard players operation #wb_title_id ec.var *= #4 adv.temp
scoreboard players operation #wb_title_id ec.var += #wb_tier ec.var

# Toggle: if already active, deactivate
scoreboard players set #cc_did adv.temp 0
execute if score @s wb.title = #wb_title_id ec.var run scoreboard players set #cc_did adv.temp 1
execute if score #cc_did adv.temp matches 1 run scoreboard players set @s wb.title 0
execute if score #cc_did adv.temp matches 1 run function evercraft:bosses/titles/leave_teams
execute if score #cc_did adv.temp matches 1 run tellraw @s [{text:"[Boss Titles] ",color:"dark_red"},{text:"Title removed.",color:"gray"}]
execute if score #cc_did adv.temp matches 1 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.8
execute if score #cc_did adv.temp matches 1 run function evercraft:advantage/gui/refresh_boss_titles
execute if score #cc_did adv.temp matches 1 run return 0

# Clear all other titles for mutual exclusivity, then activate
function evercraft:titles/clear_all
scoreboard players operation @s wb.title = #wb_title_id ec.var
function evercraft:bosses/titles/apply
tellraw @s [{text:"[Boss Titles] ",color:"dark_red"},{text:"Title applied!",color:"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2
function evercraft:advantage/gui/refresh_boss_titles
