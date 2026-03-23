# Pharaoh's Fist — Chrono Fist (Right-click, 10s CD)
# Freeze all enemies within 8 blocks (spirit: 10) for 2s (spirit: 3s)
# Slowness 127 + Weakness 127 + Resistance V
# Player attacks deal 2x during freeze (tracked via tag check)
# On expire: 6 damage burst to all frozen, remove tags

# Set cooldown
scoreboard players set @s ec.sp_cd1 200

# Tag player as chrono active + 2x damage boost during freeze
tag @s add ec.sp_chrono_active
tag @s add ec.sp_chrono_boost

# Set freeze duration timer: 40 ticks (2s) normal, 60 ticks (3s) spirit
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 60
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 40

# Freeze enemies in radius
# Normal: 8 blocks, Spirit: 10 blocks
execute if score @s ec.sp_tier matches 7 as @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run function evercraft:spirit/abilities/pharaoh_fist/apply_freeze
execute unless score @s ec.sp_tier matches 7 as @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run function evercraft:spirit/abilities/pharaoh_fist/apply_freeze

# VFX + SFX — time stop
playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1.0 0.3
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.8 0.3
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.2
particle snowflake ~ ~1 ~ 4.0 1.0 4.0 0.05 40
particle dust{color:[0.5,0.8,1.0],scale:1.5} ~ ~1 ~ 4.0 1.0 4.0 0.01 25

title @s actionbar [{"text":"CHRONO FIST!","color":"aqua","bold":true}]
