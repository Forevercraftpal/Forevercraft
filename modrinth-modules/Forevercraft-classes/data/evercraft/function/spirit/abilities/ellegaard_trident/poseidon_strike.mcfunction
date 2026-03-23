# Soul Piercer — Poseidon's Wrath Strike
# Massive AoE: 20 damage in 10-block radius (spirit: 15) + 3 lightning + Slowness III

# Remove channel tag + clear slowness from channel
tag @s remove ec.sp_poseidon_charging
effect clear @s slowness

# === AoE DAMAGE ===
# 10-block radius normal, 15-block spirit
execute if score @s ec.sp_tier matches 7 run execute as @e[distance=..15,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 20 minecraft:player_attack by @p[sort=nearest,limit=1]
execute unless score @s ec.sp_tier matches 7 run execute as @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 20 minecraft:player_attack by @p[sort=nearest,limit=1]

# === SLOWNESS III to all hit (160 ticks = 8 seconds) ===
execute if score @s ec.sp_tier matches 7 run effect give @e[distance=..15,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] slowness 8 2 false
execute unless score @s ec.sp_tier matches 7 run effect give @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] slowness 8 2 false

# === 3 LIGHTNING STRIKES ===
summon lightning_bolt ~ ~ ~
execute positioned ~3 ~ ~2 run summon lightning_bolt ~ ~ ~
execute positioned ~-2 ~ ~-3 run summon lightning_bolt ~ ~ ~

# === VFX — massive ocean impact ===
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1.5 0.6
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1.5 0.3
particle explosion ~ ~1 ~ 5.0 2.0 5.0 0.1 20
particle splash ~ ~1 ~ 8.0 1.0 8.0 0.3 80
particle rain ~ ~5 ~ 8.0 3.0 8.0 0.05 50
particle bubble ~ ~2 ~ 6.0 2.0 6.0 0.1 40
particle dust_color_transition{from_color:[0.0,0.2,0.6],to_color:[2.5,0.3,0.7],scale:1.0} ~ ~1 ~ 6.0 2.0 6.0 0.02 20

title @s actionbar [{"text":"POSEIDON'S WRATH!","color":"blue","bold":true}]
