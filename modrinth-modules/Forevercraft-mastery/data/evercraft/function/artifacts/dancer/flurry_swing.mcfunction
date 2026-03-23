# Dancer Flurry — Auto-Swing
# Run as dancer at @s anchored eyes
# Damages entities in a cone 1.5 blocks ahead (fast, short range like daggers)

# === TAG SWINGER FOR DAMAGE ATTRIBUTION ===
tag @s add ec.dn_swinger
tag @s add ec.aff_attacker

# === TIER-BASED DAMAGE (with affinity boost) ===
# T1=3, T2=4, T3=5, T4=6, T5=7, T6=8
# Cone: 1.5b forward, 2b sphere, 2 targets max
execute if score @s ec.dn_tier matches 1 run scoreboard players set #aff_base ec.temp 3
execute if score @s ec.dn_tier matches 2 run scoreboard players set #aff_base ec.temp 4
execute if score @s ec.dn_tier matches 3 run scoreboard players set #aff_base ec.temp 5
execute if score @s ec.dn_tier matches 4 run scoreboard players set #aff_base ec.temp 6
execute if score @s ec.dn_tier matches 5 run scoreboard players set #aff_base ec.temp 7
execute if score @s ec.dn_tier matches 6 run scoreboard players set #aff_base ec.temp 8
function evercraft:affinity/boost_damage
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2,limit=2,sort=nearest] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp

# === VISUAL EFFECTS ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2,limit=2,sort=nearest] at @s run particle sweep_attack ~ ~0.8 ~ 0.3 0.2 0.3 0 2
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2,limit=2,sort=nearest] at @s run particle minecraft:dust{color:[0.8,0.5,1.0],scale:0.8} ~ ~1 ~ 0.2 0.3 0.2 0 3

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.4 1.8

# === CLEANUP ===
tag @s remove ec.dn_swinger
tag @s remove ec.aff_attacker

# === RESET SWING TIMER ===
execute if score @s ec.dn_tier matches 1 run scoreboard players set @s ec.dn_swing 20
execute if score @s ec.dn_tier matches 2 run scoreboard players set @s ec.dn_swing 16
execute if score @s ec.dn_tier matches 3 run scoreboard players set @s ec.dn_swing 14
execute if score @s ec.dn_tier matches 4 run scoreboard players set @s ec.dn_swing 12
execute if score @s ec.dn_tier matches 5 run scoreboard players set @s ec.dn_swing 10
execute if score @s ec.dn_tier matches 6 run scoreboard players set @s ec.dn_swing 8

# === SCALE BY ATTACK SPEED ===
# Formula: interval = base × reference_speed / actual_speed
# Dancer reference: 240 (effective 2.4 attack speed × 100)
execute store result score #aspd ec.temp run attribute @s attack_speed get 100
scoreboard players operation @s ec.dn_swing *= #240 ec.const
scoreboard players operation @s ec.dn_swing /= #aspd ec.temp
execute if score @s ec.dn_swing matches ..0 run scoreboard players set @s ec.dn_swing 1
