# World Boss — Pick random End boss (10-11)
execute store result score #wb_boss_id ec.var run random value 10..11

execute if score #wb_boss_id ec.var matches 10 run function evercraft:bosses/summon/void_sovereign
execute if score #wb_boss_id ec.var matches 11 run function evercraft:bosses/summon/ender_architect
