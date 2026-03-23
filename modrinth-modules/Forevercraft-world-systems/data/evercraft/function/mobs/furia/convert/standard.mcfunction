# Convert mob to Standard Furia
# Stats: +50% health, +3 armor, +20% speed, +60% attack damage, +0.15 KB resist
# Scale: random 50/50 bigger (1.2-1.5x) or smaller (0.5-0.8x)

# Apply attribute modifiers
attribute @s max_health modifier add evercraft:furia/furia 0.5 add_multiplied_total
attribute @s armor modifier add evercraft:furia/furia 3 add_value
attribute @s movement_speed modifier add evercraft:furia/furia 0.2 add_multiplied_total
attribute @s attack_damage modifier add evercraft:furia/furia 0.6 add_multiplied_total
attribute @s knockback_resistance modifier add evercraft:furia/furia 0.15 add_value

# Heal to new max health (instant effects + storage backup)
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute store result storage evercraft:furia/temp max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:furia/temp max_hp

# Random scale — 50/50 bigger or smaller
execute store result score #scale_roll ec.var run random value 1..2
# Bigger: scale +0.35 average (1.2x-1.5x)
execute if score #scale_roll ec.var matches 1 run attribute @s scale modifier add evercraft:furia/furia 0.35 add_multiplied_total
# Smaller: scale -0.35 average (0.5x-0.8x)
execute if score #scale_roll ec.var matches 2 run attribute @s scale modifier add evercraft:furia/furia -0.35 add_multiplied_total

# Generate name (roll 126-250 for first and last)
execute store result storage evercraft:furia/temp first_name int 1 run random value 126..250
execute store result storage evercraft:furia/temp last_name int 1 run random value 126..250
function evercraft:mobs/furia/get_name with storage evercraft:furia/temp
# Apply name with Standard dark aqua hex color
data modify storage evercraft:furia/temp color set value "00AAAA"
data modify storage evercraft:furia/temp symbol set value "✮"
function evercraft:mobs/furia/apply_name with storage evercraft:furia/temp

# Tag and team — NO glowing, NO notifications
tag @s add ec.furia
tag @s add ec.furia.standard
tag @s add ec.furia.processed
tag @s add bestiary.settings.applied
team join ec.furia.standard @s

# Subtle spawn effect
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.01 3
playsound minecraft:entity.zombie.ambient hostile @a[distance=..16] ~ ~ ~ 0.3 1.0
