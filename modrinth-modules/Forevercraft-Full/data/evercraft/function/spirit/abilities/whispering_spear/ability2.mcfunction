# Thornmaw — Primal Fusion (Sneak+Right-click, 45s CD)
# Fuse with primal spirit: Strength II + Speed I + Resistance I for 15s (spirit: 20s)
# Increased player scale via attribute modifier

# Set cooldown
scoreboard players set @s ec.sp_cd2 900

# Apply effects: 15s (300 ticks) normal, 20s (400 ticks) spirit
execute if score @s ec.sp_tier matches 7 run effect give @s strength 20 1 false
execute if score @s ec.sp_tier matches 7 run effect give @s speed 20 0 false
execute if score @s ec.sp_tier matches 7 run effect give @s resistance 20 0 false
execute unless score @s ec.sp_tier matches 7 run effect give @s strength 15 1 false
execute unless score @s ec.sp_tier matches 7 run effect give @s speed 15 0 false
execute unless score @s ec.sp_tier matches 7 run effect give @s resistance 15 0 false

# Increase player scale
attribute @s scale modifier add evercraft:primal_fusion 0.3 add_value

# Tag player and set fusion timer (use ec.sp_state for this)
tag @s add ec.sp_fused
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 400
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_state 300

# VFX + SFX
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.warden.emerge player @a ~ ~ ~ 0.6 1.5
particle soul_fire_flame ~ ~1 ~ 0.5 1.0 0.5 0.08 40
particle enchant ~ ~1 ~ 0.8 1.0 0.8 2.0 30

title @s actionbar [{"text":"PRIMAL FUSION!","color":"gold","bold":true}]
