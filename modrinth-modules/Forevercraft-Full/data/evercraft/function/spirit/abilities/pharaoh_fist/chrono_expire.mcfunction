# Pharaoh's Fist — Chrono Fist Expire
# Freeze ends: 6 damage burst to all frozen entities, cleanup

# Damage burst to all frozen entities
execute as @e[tag=ec.sp_frozen] at @s run damage @s 6 minecraft:magic
execute as @e[tag=ec.sp_frozen] at @s run particle poof ~ ~0.5 ~ 0.3 0.3 0.3 0.05 8

# Clear freeze effects
execute as @e[tag=ec.sp_frozen] run effect clear @s slowness
execute as @e[tag=ec.sp_frozen] run effect clear @s weakness
execute as @e[tag=ec.sp_frozen] run effect clear @s resistance

# Remove frozen tags
tag @e[tag=ec.sp_frozen] remove ec.sp_frozen

# Remove chrono active from player
tag @s remove ec.sp_chrono_active

# SFX
playsound minecraft:block.glass.break player @a ~ ~ ~ 1.0 1.5
particle snowflake ~ ~1 ~ 3.0 1.0 3.0 0.08 20

title @s actionbar [{"text":"Time resumes!","color":"white","italic":true}]
