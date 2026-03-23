# Convert mob to Ornate Patron
# Stats: 75hp (on 20hp base), +10 armor, +50% speed, +200% attack damage, high knockback resist

# Apply attribute modifiers
attribute @s max_health modifier add evercraft:patrons/patron 2.75 add_multiplied_total
attribute @s armor modifier add evercraft:patrons/patron 10 add_value
attribute @s movement_speed modifier add evercraft:patrons/patron 0.5 add_multiplied_total
attribute @s attack_damage modifier add evercraft:patrons/patron 2.0 add_multiplied_total
attribute @s knockback_resistance modifier add evercraft:patrons/patron 0.6 add_value

# Heal to new max health (instant effects + storage backup)
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute store result storage evercraft:patrons/temp max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:patrons/temp max_hp

# Generate name (roll 1-125 for first and last)
execute store result storage evercraft:patrons/temp first_name int 1 run random value 1..125
execute store result storage evercraft:patrons/temp last_name int 1 run random value 1..125
function evercraft:mobs/patrons/get_name with storage evercraft:patrons/temp
# Apply name with Ornate dark purple hex color
data modify storage evercraft:patrons/temp color set value "AA00AA"
data modify storage evercraft:patrons/temp symbol set value "❈"
function evercraft:mobs/patrons/apply_name with storage evercraft:patrons/temp

# Tag and team
tag @s add ec.patron
tag @s add ec.patron.ornate
tag @s add ec.patron.processed
tag @s add bestiary.settings.applied
team join ec.patron.ornate @s

# Permanent glowing effect
effect give @s minecraft:glowing infinite 0 true

# Visual feedback — purple particle beam
particle dust{color:[0.7,0.0,0.7],scale:2.0} ~ ~ ~ 0 4 0 0 80 force
particle witch ~ ~1 ~ 0.3 0.5 0.3 0.1 15
playsound minecraft:entity.wither.ambient hostile @a[distance=..64] ~ ~ ~ 0.7 1.0
