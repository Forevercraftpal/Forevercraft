# World Boss — Transition to Phase 4 (25% HP)
# Called as boss entity

scoreboard players set #wb_phase ec.var 4

# Phase 4 attribute buffs: +5 armor, +15% speed, +50% damage (cumulative with P2+P3)
attribute @s armor modifier add evercraft:boss/phase4 5 add_value
attribute @s movement_speed modifier add evercraft:boss/phase4 0.15 add_multiplied_base
attribute @s attack_damage modifier add evercraft:boss/phase4 0.5 add_multiplied_base

# Partial heal: +10% of max HP
scoreboard players operation #wb_temp ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp2 ec.var 10
scoreboard players operation #wb_temp ec.var *= #wb_temp2 ec.var
scoreboard players operation #wb_temp ec.var /= #100 adv.temp
execute store result score #wb_temp2 ec.var run data get entity @s Health 1
scoreboard players operation #wb_temp2 ec.var += #wb_temp ec.var
execute if score #wb_temp2 ec.var > #wb_hp_max ec.var run scoreboard players operation #wb_temp2 ec.var = #wb_hp_max ec.var
execute store result storage evercraft:bosses temp.heal_hp float 1 run scoreboard players get #wb_temp2 ec.var
data modify entity @s Health set from storage evercraft:bosses temp.heal_hp

# Transition VFX (massive)
particle minecraft:explosion ~ ~1 ~ 1.5 1.5 1.5 0.8 30
particle minecraft:soul_fire_flame ~ ~2 ~ 1.5 2 1.5 0.1 60
particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.15 40
particle minecraft:reverse_portal ~ ~1.5 ~ 1 1 1 0.2 50
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 2.0 0.4
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.5 0.5

# Announce phase change (boss name + seasonal flavor)
function evercraft:bosses/phase/announce_p4 with storage evercraft:bosses active

# Dispatch boss-specific phase 4
execute if score #wb_boss_id ec.var matches 1 run function evercraft:bosses/phase/hollow_king_p4
execute if score #wb_boss_id ec.var matches 2 run function evercraft:bosses/phase/verdant_warden_p4
execute if score #wb_boss_id ec.var matches 3 run function evercraft:bosses/phase/stormforged_p4
execute if score #wb_boss_id ec.var matches 4 run function evercraft:bosses/phase/tidecaller_p4
execute if score #wb_boss_id ec.var matches 5 run function evercraft:bosses/phase/earthshaker_p4
execute if score #wb_boss_id ec.var matches 6 run function evercraft:bosses/phase/nightmare_p4
execute if score #wb_boss_id ec.var matches 7 run function evercraft:bosses/phase/infernal_titan_p4
execute if score #wb_boss_id ec.var matches 8 run function evercraft:bosses/phase/soul_warden_p4
execute if score #wb_boss_id ec.var matches 9 run function evercraft:bosses/phase/crimson_behemoth_p4
execute if score #wb_boss_id ec.var matches 10 run function evercraft:bosses/phase/void_sovereign_p4
execute if score #wb_boss_id ec.var matches 11 run function evercraft:bosses/phase/ender_architect_p4
