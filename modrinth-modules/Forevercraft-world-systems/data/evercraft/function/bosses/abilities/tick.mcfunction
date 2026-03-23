# World Boss — Ability Dispatch
# Called as boss entity, at boss position, every 1s

# Decrement ability cooldown
scoreboard players remove #wb_ability_cd ec.var 1
execute if score #wb_ability_cd ec.var matches ..-1 run scoreboard players set #wb_ability_cd ec.var 0

# Route to boss-specific ability function
execute if score #wb_boss_id ec.var matches 1 run function evercraft:bosses/abilities/hollow_king
execute if score #wb_boss_id ec.var matches 2 run function evercraft:bosses/abilities/verdant_warden
execute if score #wb_boss_id ec.var matches 3 run function evercraft:bosses/abilities/stormforged
execute if score #wb_boss_id ec.var matches 4 run function evercraft:bosses/abilities/tidecaller
execute if score #wb_boss_id ec.var matches 5 run function evercraft:bosses/abilities/earthshaker
execute if score #wb_boss_id ec.var matches 6 run function evercraft:bosses/abilities/nightmare
execute if score #wb_boss_id ec.var matches 7 run function evercraft:bosses/abilities/infernal_titan
execute if score #wb_boss_id ec.var matches 8 run function evercraft:bosses/abilities/soul_warden
execute if score #wb_boss_id ec.var matches 9 run function evercraft:bosses/abilities/crimson_behemoth
execute if score #wb_boss_id ec.var matches 10 run function evercraft:bosses/abilities/void_sovereign
execute if score #wb_boss_id ec.var matches 11 run function evercraft:bosses/abilities/ender_architect

# Ambient particles (all bosses)
particle minecraft:dust{color:[0.8,0.1,0.1],scale:1.5} ~ ~2 ~ 0.5 0.5 0.5 0.02 5
