# Bulwark Shield — Unbreakable Wall (Right-click, 15s CD = 300 ticks)
# 5-second channel (100 ticks, spirit: 160 = 8s)
# Player: Slowness 127 (immovable) + Resistance IV (80% reduction)
# Taunt all mobs within 10 blocks (spirit: 12) — tag ec.sp_taunted
# Track damage taken during wall via ec.sp_wall_absorb
# At end: explosion = wall_absorb x2 damage to all entities within 6 blocks

# Set cooldown
scoreboard players set @s ec.sp_cd1 300

# Tag player as wall active
tag @s add ec.sp_wall_active

# Reset damage absorption counter
scoreboard players set @s ec.sp_wall_absorb 0

# Store current health to track damage taken
execute store result score @s ec.sp_state run data get entity @s Health 1

# Set timer based on tier
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 160
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 100

# Apply immobility + tank effects
effect give @s slowness 6 127 true
effect give @s resistance 6 3 true

# Taunt nearby mobs (10 blocks, spirit: 12)
execute as @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run tag @s add ec.sp_taunted

# === VFX — Shield slam into ground ===
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1.0 0.4
playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 0.8 0.6
playsound minecraft:entity.warden.emerge player @a ~ ~ ~ 0.5 1.5
particle dust{color:[0.5,0.5,0.6],scale:2.0} ~ ~0.5 ~ 2.0 1.0 2.0 0.02 40
particle ash ~ ~0.5 ~ 3.0 0.5 3.0 0.05 30
particle block_crumble{block_state:"minecraft:stone"} ~ ~0.2 ~ 2.0 0.1 2.0 0.1 25

title @s actionbar [{"text":"UNBREAKABLE WALL!","color":"blue","bold":true}]
