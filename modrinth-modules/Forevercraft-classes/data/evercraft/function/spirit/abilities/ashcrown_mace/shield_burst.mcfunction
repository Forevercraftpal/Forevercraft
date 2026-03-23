# Ashcrown Mace — Shield Burst
# Triggered when shield charges reach threshold (100 normal, 150 spirit)
# Run as player, at player position

# Apply Resistance III for 5 seconds
effect give @s resistance 5 2 false

# AoE damage + knockback: 10 damage in 5-block radius
execute as @e[distance=..5,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 10 minecraft:player_attack by @p[sort=nearest,limit=1]

# VFX — shield shatter explosion
particle explosion ~ ~0.5 ~ 2.0 0.5 2.0 0.1 8
particle dust{color:[1.0,0.8,0.2],scale:2.0} ~ ~0.5 ~ 3.0 1.0 3.0 0.01 30
particle sweep_attack ~ ~1 ~ 2.0 0.3 2.0 0.1 10
particle ash ~ ~0.5 ~ 3.0 1.0 3.0 0.1 40

# SFX
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.0 0.5
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.0
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.7 0.8

title @s actionbar [{"text":"SHIELD BURST!","color":"gold","bold":true}]
