# World Boss — Check title milestone unlocks
# Called as each participant after their per-boss kill counter is incremented
# Routes to boss-specific check based on #wb_boss_id

execute if score #wb_boss_id ec.var matches 1 run function evercraft:bosses/titles/check/boss_1
execute if score #wb_boss_id ec.var matches 2 run function evercraft:bosses/titles/check/boss_2
execute if score #wb_boss_id ec.var matches 3 run function evercraft:bosses/titles/check/boss_3
execute if score #wb_boss_id ec.var matches 4 run function evercraft:bosses/titles/check/boss_4
execute if score #wb_boss_id ec.var matches 5 run function evercraft:bosses/titles/check/boss_5
execute if score #wb_boss_id ec.var matches 6 run function evercraft:bosses/titles/check/boss_6
execute if score #wb_boss_id ec.var matches 7 run function evercraft:bosses/titles/check/boss_7
execute if score #wb_boss_id ec.var matches 8 run function evercraft:bosses/titles/check/boss_8
execute if score #wb_boss_id ec.var matches 9 run function evercraft:bosses/titles/check/boss_9
execute if score #wb_boss_id ec.var matches 10 run function evercraft:bosses/titles/check/boss_10
execute if score #wb_boss_id ec.var matches 11 run function evercraft:bosses/titles/check/boss_11

# Check for World Boss Champion (all 11 bosses killed at least once)
execute if score @s wb.k1 matches 1.. if score @s wb.k2 matches 1.. if score @s wb.k3 matches 1.. if score @s wb.k4 matches 1.. if score @s wb.k5 matches 1.. if score @s wb.k6 matches 1.. run function evercraft:bosses/titles/check/champion_half
