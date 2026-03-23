# Phase 2: HAMMER — Check if clicked color matches expected pattern position

# Compare clicked color to expected at current position
scoreboard players set #cf_match ec.cf_temp 0
execute if score @s ec.cf_pat_pos matches 1 if score #cf_clicked ec.cf_temp = @s ec.cf_p1 run scoreboard players set #cf_match ec.cf_temp 1
execute if score @s ec.cf_pat_pos matches 2 if score #cf_clicked ec.cf_temp = @s ec.cf_p2 run scoreboard players set #cf_match ec.cf_temp 1
execute if score @s ec.cf_pat_pos matches 3 if score #cf_clicked ec.cf_temp = @s ec.cf_p3 run scoreboard players set #cf_match ec.cf_temp 1
execute if score @s ec.cf_pat_pos matches 4 if score #cf_clicked ec.cf_temp = @s ec.cf_p4 run scoreboard players set #cf_match ec.cf_temp 1
execute if score @s ec.cf_pat_pos matches 5 if score #cf_clicked ec.cf_temp = @s ec.cf_p5 run scoreboard players set #cf_match ec.cf_temp 1
execute if score @s ec.cf_pat_pos matches 6 if score #cf_clicked ec.cf_temp = @s ec.cf_p6 run scoreboard players set #cf_match ec.cf_temp 1

# Correct match
execute if score #cf_match ec.cf_temp matches 1 run scoreboard players add @s ec.cf_quality 1
execute if score #cf_match ec.cf_temp matches 1 run scoreboard players add @s ec.cf_pat_pos 1
execute if score #cf_match ec.cf_temp matches 1 run playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.6 1.2
execute if score #cf_match ec.cf_temp matches 1 at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.2 0.2 0.02 5

# Wrong match — reset position (keep accumulated quality)
execute if score #cf_match ec.cf_temp matches 0 run scoreboard players set @s ec.cf_pat_pos 1
execute if score #cf_match ec.cf_temp matches 0 run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 0.8
execute if score #cf_match ec.cf_temp matches 0 run tellraw @s [{text:"Wrong! ",color:"red"},{text:"Sequence reset.",color:"gray"}]

# Check if pattern complete (pos > len)
execute if score @s ec.cf_pat_pos > @s ec.cf_pat_len run function evercraft:craftforever/forging/minigame/phase2_hammer/complete
