# World Boss — Transition to Phase 2 (75% HP)
# Called as boss entity

scoreboard players set #wb_phase ec.var 2

# Phase 2 attribute buffs: +3 armor, +10% speed, +25% damage
attribute @s armor modifier add evercraft:boss/phase2 3 add_value
attribute @s movement_speed modifier add evercraft:boss/phase2 0.1 add_multiplied_base
attribute @s attack_damage modifier add evercraft:boss/phase2 0.25 add_multiplied_base

# Partial heal: +5% of max HP
scoreboard players operation #wb_temp ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp2 ec.var 5
scoreboard players operation #wb_temp ec.var *= #wb_temp2 ec.var
scoreboard players operation #wb_temp ec.var /= #100 adv.temp
# Add heal to current HP
execute store result score #wb_temp2 ec.var run data get entity @s Health 1
scoreboard players operation #wb_temp2 ec.var += #wb_temp ec.var
# Cap at max
execute if score #wb_temp2 ec.var > #wb_hp_max ec.var run scoreboard players operation #wb_temp2 ec.var = #wb_hp_max ec.var
execute store result storage evercraft:bosses temp.heal_hp float 1 run scoreboard players get #wb_temp2 ec.var
data modify entity @s Health set from storage evercraft:bosses temp.heal_hp

# Transition VFX
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.3 10
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.05 30
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 0.8

# Announce phase change (boss name + seasonal flavor)
function evercraft:bosses/phase/announce_p2 with storage evercraft:bosses active

# Dispatch boss-specific phase 2 abilities/minions
execute if score #wb_boss_id ec.var matches 1 run function evercraft:bosses/phase/hollow_king_p2
execute if score #wb_boss_id ec.var matches 2 run function evercraft:bosses/phase/verdant_warden_p2
execute if score #wb_boss_id ec.var matches 3 run function evercraft:bosses/phase/stormforged_p2
execute if score #wb_boss_id ec.var matches 4 run function evercraft:bosses/phase/tidecaller_p2
execute if score #wb_boss_id ec.var matches 5 run function evercraft:bosses/phase/earthshaker_p2
execute if score #wb_boss_id ec.var matches 6 run function evercraft:bosses/phase/nightmare_p2
execute if score #wb_boss_id ec.var matches 7 run function evercraft:bosses/phase/infernal_titan_p2
execute if score #wb_boss_id ec.var matches 8 run function evercraft:bosses/phase/soul_warden_p2
execute if score #wb_boss_id ec.var matches 9 run function evercraft:bosses/phase/crimson_behemoth_p2
execute if score #wb_boss_id ec.var matches 10 run function evercraft:bosses/phase/void_sovereign_p2
execute if score #wb_boss_id ec.var matches 11 run function evercraft:bosses/phase/ender_architect_p2
