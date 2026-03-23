# World Boss — Pick random Overworld boss (1-6)
execute store result score #wb_boss_id ec.var run random value 1..6

execute if score #wb_boss_id ec.var matches 1 run function evercraft:bosses/summon/hollow_king
execute if score #wb_boss_id ec.var matches 2 run function evercraft:bosses/summon/verdant_warden
execute if score #wb_boss_id ec.var matches 3 run function evercraft:bosses/summon/stormforged
execute if score #wb_boss_id ec.var matches 4 run function evercraft:bosses/summon/tidecaller
execute if score #wb_boss_id ec.var matches 5 run function evercraft:bosses/summon/earthshaker
execute if score #wb_boss_id ec.var matches 6 run function evercraft:bosses/summon/nightmare
