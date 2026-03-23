# Bulwark Shield — Titan's Guard (Sneak+Right-click, 25s CD = 500 ticks)
# Link with nearest player within 8 blocks for 10 seconds (200 ticks)
# Tag linked player ec.sp_guarded
# Self: Resistance III. Guarded ally: Resistance II + Regeneration I
# VFX: chain particles between players, shield particles

# Set cooldown
scoreboard players set @s ec.sp_cd2 500

# Find nearest non-self player within 8 blocks and tag them
tag @s add ec.sp_guardian
execute as @a[distance=..8,limit=1,sort=nearest,tag=!ec.sp_guardian] run tag @s add ec.sp_guarded
tag @s remove ec.sp_guardian

# If no ally found, self-buff only (stronger Resistance)
execute unless entity @a[tag=ec.sp_guarded,limit=1] run effect give @s resistance 10 3 true
execute unless entity @a[tag=ec.sp_guarded,limit=1] run effect give @s regeneration 10 1 true

# If ally found, set up the link
execute if entity @a[tag=ec.sp_guarded,limit=1] run tag @s add ec.sp_guarding

# Set timer — 200 ticks (10 seconds)
execute if entity @s[tag=ec.sp_guarding] run scoreboard players set @s ec.sp_timer 200

# Self: Resistance III
execute if entity @s[tag=ec.sp_guarding] run effect give @s resistance 11 2 true

# Guarded ally: Resistance II + Regeneration I
execute as @a[tag=ec.sp_guarded,limit=1] run effect give @s resistance 11 1 true
execute as @a[tag=ec.sp_guarded,limit=1] run effect give @s regeneration 11 0 true

# === VFX ===
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 0.8 1.0
particle dust{color:[0.3,0.5,1.0],scale:1.5} ~ ~1 ~ 1.0 1.0 1.0 0.05 20
particle enchant ~ ~1.5 ~ 0.5 0.5 0.5 0.1 15

# VFX on guarded ally
execute at @a[tag=ec.sp_guarded,limit=1] run particle dust{color:[0.3,0.5,1.0],scale:1.5} ~ ~1 ~ 1.0 1.0 1.0 0.05 20
execute at @a[tag=ec.sp_guarded,limit=1] run particle enchant ~ ~1.5 ~ 0.5 0.5 0.5 0.1 15

title @s actionbar [{"text":"TITAN'S GUARD!","color":"aqua","bold":true}]
execute as @a[tag=ec.sp_guarded,limit=1] run title @s actionbar [{"text":"Protected by Titan's Guard!","color":"aqua"}]
