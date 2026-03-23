# Ashcrown Mace — Judgment Strike Hit 2
# Delayed follow-up: 5x damage if stunned, 2x if not + shockwave

# Remove judging tag
tag @s remove ec.sp_judging

# === FOLLOW-UP HIT ===
# Check if stunned target exists and deal bonus damage
# Stunned target (tagged): 50 damage (5x base ~10)
execute at @e[tag=ec.sp_stun_target,limit=1] run damage @e[tag=ec.sp_stun_target,limit=1] 50 minecraft:player_attack by @s
execute at @e[tag=ec.sp_stun_target,limit=1] run particle explosion ~ ~1 ~ 0.3 0.3 0.3 0.1 5
execute at @e[tag=ec.sp_stun_target,limit=1] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.0 0.6

# If no stunned target found, deal 2x to nearest (20 damage)
execute unless entity @e[tag=ec.sp_stun_target,limit=1] run damage @e[distance=..4,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] 20 minecraft:player_attack by @s

# === SHOCKWAVE ===
# 3-block radius, 6 damage to all enemies
execute as @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 6 minecraft:player_attack by @p[sort=nearest,limit=1]

# Clean up stun tag
tag @e[tag=ec.sp_stun_target] remove ec.sp_stun_target

# VFX + SFX
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.2
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 0.5
particle explosion ~ ~0.5 ~ 1.5 0.3 1.5 0.1 8
particle dust{color:[1.0,0.6,0.0],scale:2.0} ~ ~0.5 ~ 1.5 0.3 1.5 0.01 15
particle sweep_attack ~ ~1 ~ 1.0 0.3 1.0 0.1 5

title @s actionbar [{"text":"JUDGMENT!","color":"red","bold":true}]
