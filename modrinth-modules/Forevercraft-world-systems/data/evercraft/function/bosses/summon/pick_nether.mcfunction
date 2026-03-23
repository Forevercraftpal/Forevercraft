# World Boss — Pick random Nether boss (7-9)
execute store result score #wb_boss_id ec.var run random value 7..9

execute if score #wb_boss_id ec.var matches 7 run function evercraft:bosses/summon/infernal_titan
execute if score #wb_boss_id ec.var matches 8 run function evercraft:bosses/summon/soul_warden
execute if score #wb_boss_id ec.var matches 9 run function evercraft:bosses/summon/crimson_behemoth
