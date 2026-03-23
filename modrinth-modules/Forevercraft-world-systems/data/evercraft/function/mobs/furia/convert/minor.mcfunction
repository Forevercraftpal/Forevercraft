# Convert mob to Minor Furia
# Stats: +25% health, +1 armor, +10% speed, +30% attack damage
# Scale: random 50/50 bigger (1.2-1.5x) or smaller (0.5-0.8x)

# Apply attribute modifiers
attribute @s max_health modifier add evercraft:furia/furia 0.25 add_multiplied_total
attribute @s armor modifier add evercraft:furia/furia 1 add_value
attribute @s movement_speed modifier add evercraft:furia/furia 0.1 add_multiplied_total
attribute @s attack_damage modifier add evercraft:furia/furia 0.3 add_multiplied_total

# Heal to new max health (instant effects + storage backup)
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute store result storage evercraft:furia/temp max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:furia/temp max_hp

# Random scale — 50/50 bigger or smaller
execute store result score #scale_roll ec.var run random value 1..2
# Bigger: scale +0.2 to +0.5 (1.2x-1.5x)
execute if score #scale_roll ec.var matches 1 store result score #scale_val ec.var run random value 200..500
execute if score #scale_roll ec.var matches 1 run scoreboard players operation #scale_val ec.var /= #1000 ec.const
execute if score #scale_roll ec.var matches 1 run attribute @s scale modifier add evercraft:furia/furia 0.35 add_multiplied_total
# Smaller: scale -0.5 to -0.2 (0.5x-0.8x)
execute if score #scale_roll ec.var matches 2 run attribute @s scale modifier add evercraft:furia/furia -0.35 add_multiplied_total

# Generate name (roll 126-250 for first and last)
execute store result storage evercraft:furia/temp first_name int 1 run random value 126..250
execute store result storage evercraft:furia/temp last_name int 1 run random value 126..250
function evercraft:mobs/furia/get_name with storage evercraft:furia/temp
# Apply name with Minor dark gray hex color
data modify storage evercraft:furia/temp color set value "555555"
data modify storage evercraft:furia/temp symbol set value "☆"
function evercraft:mobs/furia/apply_name with storage evercraft:furia/temp

# Tag and team — NO glowing, NO notifications
tag @s add ec.furia
tag @s add ec.furia.minor
tag @s add ec.furia.processed
tag @s add bestiary.settings.applied
team join ec.furia.minor @s

# Subtle spawn effect
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.01 5
playsound minecraft:entity.zombie.ambient hostile @a[distance=..16] ~ ~ ~ 0.3 1.2
