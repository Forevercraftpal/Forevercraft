# Ashcrown Mace — Judgment Strike (Sneak+Right-click, 18s CD)
# Two-hit combo:
# Hit 1 (immediate): Stun nearest target (Slowness V + Weakness V for 2s; spirit: 3s)
# Hit 2 (after 10 ticks): 5x if stunned, 2x if not + 3-block shockwave (6 damage)

# Set cooldown
scoreboard players set @s ec.sp_cd2 360

# === HIT 1: STUN ===
# Find nearest enemy and stun it
execute if score @s ec.sp_tier matches 7 run effect give @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] slowness 3 4 false
execute if score @s ec.sp_tier matches 7 run effect give @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] weakness 3 4 false
execute unless score @s ec.sp_tier matches 7 run effect give @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] slowness 2 4 false
execute unless score @s ec.sp_tier matches 7 run effect give @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] weakness 2 4 false

# Tag the stunned target
tag @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] add ec.sp_stun_target

# Set state machine for hit 2 (10 tick delay)
tag @s add ec.sp_judging
scoreboard players set @s ec.sp_state 10

# VFX + SFX
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1.0 0.6
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 0.5 2.0
particle crit ~ ~1 ~ 0.5 0.5 0.5 0.3 15

title @s actionbar [{"text":"JUDGMENT STRIKE!","color":"gold","bold":true}]
