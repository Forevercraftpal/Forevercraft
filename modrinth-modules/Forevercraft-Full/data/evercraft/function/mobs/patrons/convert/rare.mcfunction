# Convert mob to Rare Patron
# Stats: +150% health, +6 armor, +35% speed, +150% attack damage, knockback resist

# Apply attribute modifiers
attribute @s max_health modifier add evercraft:patrons/patron 1.5 add_multiplied_total
attribute @s armor modifier add evercraft:patrons/patron 6 add_value
attribute @s movement_speed modifier add evercraft:patrons/patron 0.35 add_multiplied_total
attribute @s attack_damage modifier add evercraft:patrons/patron 1.5 add_multiplied_total
attribute @s knockback_resistance modifier add evercraft:patrons/patron 0.3 add_value

# Heal to new max health (instant effects + storage backup)
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute store result storage evercraft:patrons/temp max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:patrons/temp max_hp

# Generate name (roll 1-125 for first and last)
execute store result storage evercraft:patrons/temp first_name int 1 run random value 1..125
execute store result storage evercraft:patrons/temp last_name int 1 run random value 1..125
function evercraft:mobs/patrons/get_name with storage evercraft:patrons/temp
# Apply name with Rare aqua hex color
data modify storage evercraft:patrons/temp color set value "55FFFF"
data modify storage evercraft:patrons/temp symbol set value "✲"
function evercraft:mobs/patrons/apply_name with storage evercraft:patrons/temp

# Tag and team
tag @s add ec.patron
tag @s add ec.patron.rare
tag @s add ec.patron.processed
tag @s add bestiary.settings.applied
tag @s add mobs.patrons.applied
team join ec.patron.rare @s

# Permanent glowing effect
effect give @s minecraft:glowing infinite 0 true

# Visual feedback — blue particle beam
particle dust{color:[0.3,0.3,1.0],scale:1.5} ~ ~ ~ 0 3 0 0 50 force
playsound minecraft:entity.wither.ambient hostile @a[distance=..48] ~ ~ ~ 0.5 1.2
