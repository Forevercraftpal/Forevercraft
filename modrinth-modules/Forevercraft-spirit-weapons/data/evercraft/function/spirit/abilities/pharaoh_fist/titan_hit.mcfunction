# Pharaoh's Fist — Titan Breaker Strike
# After windup: 60 damage to nearest within 5 blocks + launch upward/backward

# Remove charging tag + clear slowness
tag @s remove ec.sp_charging
effect clear @s slowness

# === TITAN STRIKE: 60 damage to nearest within 5 blocks ===
damage @e[distance=..5,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] 60 minecraft:player_attack by @s

# === LAUNCH TARGET (upward + backward) ===
execute as @e[distance=..5,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] run data modify entity @s Motion set value [0.0d, 1.5d, 2.0d]

# Apply Glowing for visual feedback (5 seconds)
effect give @e[distance=..5,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,limit=1,sort=nearest] glowing 5 0 false

# === VFX — massive impact ===
playsound minecraft:block.anvil.land player @a ~ ~ ~ 1.5 0.3
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.8 0.5
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 0.8
particle explosion ~ ~1 ~ 2.0 1.0 2.0 0.1 15
particle dust{color:[1.0,0.85,0.0],scale:2.5} ~ ~1 ~ 1.5 1.0 1.5 0.02 20
particle crit ~ ~1 ~ 2.0 1.0 2.0 0.3 20
particle campfire_cosy_smoke ~ ~0.5 ~ 1.0 0.3 1.0 0.05 8

title @s actionbar [{"text":"TITAN BREAKER!","color":"gold","bold":true}]
