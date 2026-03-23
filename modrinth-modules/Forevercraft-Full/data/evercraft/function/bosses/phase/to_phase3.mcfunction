# World Boss — Transition to Phase 3 (50% HP)
# Called as boss entity

scoreboard players set #wb_phase ec.var 3

# Phase 3 attribute buffs: +4 armor, +10% speed, +35% damage (cumulative with P2)
attribute @s armor modifier add evercraft:boss/phase3 4 add_value
attribute @s movement_speed modifier add evercraft:boss/phase3 0.1 add_multiplied_base
attribute @s attack_damage modifier add evercraft:boss/phase3 0.35 add_multiplied_base

# Partial heal: +8% of max HP
scoreboard players operation #wb_temp ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp2 ec.var 8
scoreboard players operation #wb_temp ec.var *= #wb_temp2 ec.var
scoreboard players operation #wb_temp ec.var /= #100 adv.temp
execute store result score #wb_temp2 ec.var run data get entity @s Health 1
scoreboard players operation #wb_temp2 ec.var += #wb_temp ec.var
execute if score #wb_temp2 ec.var > #wb_hp_max ec.var run scoreboard players operation #wb_temp2 ec.var = #wb_hp_max ec.var
execute store result storage evercraft:bosses temp.heal_hp float 1 run scoreboard players get #wb_temp2 ec.var
data modify entity @s Health set from storage evercraft:bosses temp.heal_hp

# Transition VFX (bigger)
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 20
particle minecraft:soul_fire_flame ~ ~2 ~ 1 1.5 1 0.08 50
particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.1 30
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 0.6

# Announce phase change (boss name + seasonal flavor)
function evercraft:bosses/phase/announce_p3 with storage evercraft:bosses active

# Dispatch boss-specific phase 3
execute if score #wb_boss_id ec.var matches 1 run function evercraft:bosses/phase/hollow_king_p3
execute if score #wb_boss_id ec.var matches 2 run function evercraft:bosses/phase/verdant_warden_p3
execute if score #wb_boss_id ec.var matches 3 run function evercraft:bosses/phase/stormforged_p3
execute if score #wb_boss_id ec.var matches 4 run function evercraft:bosses/phase/tidecaller_p3
execute if score #wb_boss_id ec.var matches 5 run function evercraft:bosses/phase/earthshaker_p3
execute if score #wb_boss_id ec.var matches 6 run function evercraft:bosses/phase/nightmare_p3
execute if score #wb_boss_id ec.var matches 7 run function evercraft:bosses/phase/infernal_titan_p3
execute if score #wb_boss_id ec.var matches 8 run function evercraft:bosses/phase/soul_warden_p3
execute if score #wb_boss_id ec.var matches 9 run function evercraft:bosses/phase/crimson_behemoth_p3
execute if score #wb_boss_id ec.var matches 10 run function evercraft:bosses/phase/void_sovereign_p3
execute if score #wb_boss_id ec.var matches 11 run function evercraft:bosses/phase/ender_architect_p3
