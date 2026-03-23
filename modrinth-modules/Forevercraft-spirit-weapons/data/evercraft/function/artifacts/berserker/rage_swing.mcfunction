# Berserker Rage — Auto-Swing
# Run as raging berserker at @s anchored eyes
# Damages entities in a cone 2 blocks ahead, axes have longer reach than daggers

# === TAG SWINGER FOR DAMAGE ATTRIBUTION ===
tag @s add ec.bk_swinger
tag @s add ec.aff_attacker

# === TIER-BASED DAMAGE (with affinity boost) ===
# T1=5, T2=6, T3=7, T4=8, T5=9, T6=10
# Cone: 2b forward, 2.5b sphere, 3 targets max
execute if score @s ec.bk_tier matches 1 run scoreboard players set #aff_base ec.temp 5
execute if score @s ec.bk_tier matches 2 run scoreboard players set #aff_base ec.temp 6
execute if score @s ec.bk_tier matches 3 run scoreboard players set #aff_base ec.temp 7
execute if score @s ec.bk_tier matches 4 run scoreboard players set #aff_base ec.temp 8
execute if score @s ec.bk_tier matches 5 run scoreboard players set #aff_base ec.temp 9
execute if score @s ec.bk_tier matches 6 run scoreboard players set #aff_base ec.temp 10
function evercraft:affinity/boost_damage
execute positioned ^ ^ ^2.0 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2.5,limit=3,sort=nearest] run function evercraft:affinity/deal_damage with storage evercraft:affinity temp

# === VISUAL EFFECTS ===
execute positioned ^ ^ ^2.0 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2.5,limit=3,sort=nearest] at @s run particle sweep_attack ~ ~0.8 ~ 0.3 0.2 0.3 0 2
execute positioned ^ ^ ^2.0 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,tag=!Pet,tag=!Companion,tag=!vex_ally,tag=!sentry_trim,distance=..2.5,limit=3,sort=nearest] at @s run particle minecraft:dust{color:[1.0,0.2,0.0],scale:1.0} ~ ~1 ~ 0.2 0.3 0.2 0 3

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.6 0.8

# === CLEANUP ===
tag @s remove ec.bk_swinger
tag @s remove ec.aff_attacker

# === RESET SWING TIMER ===
execute if score @s ec.bk_tier matches 1 run scoreboard players set @s ec.bk_swing 24
execute if score @s ec.bk_tier matches 2 run scoreboard players set @s ec.bk_swing 20
execute if score @s ec.bk_tier matches 3 run scoreboard players set @s ec.bk_swing 16
execute if score @s ec.bk_tier matches 4 run scoreboard players set @s ec.bk_swing 14
execute if score @s ec.bk_tier matches 5 run scoreboard players set @s ec.bk_swing 12
execute if score @s ec.bk_tier matches 6 run scoreboard players set @s ec.bk_swing 10
