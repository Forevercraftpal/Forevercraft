# Convert mob to Exquisite Patron
# Stats: 125hp (on 20hp base), +15 armor, +60% speed, +250% attack damage, very high knockback resist

# Apply attribute modifiers
attribute @s max_health modifier add evercraft:patrons/patron 5.25 add_multiplied_total
attribute @s armor modifier add evercraft:patrons/patron 15 add_value
attribute @s movement_speed modifier add evercraft:patrons/patron 0.6 add_multiplied_total
attribute @s attack_damage modifier add evercraft:patrons/patron 2.5 add_multiplied_total
attribute @s knockback_resistance modifier add evercraft:patrons/patron 0.8 add_value

# Heal to new max health (instant effects + storage backup)
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute store result storage evercraft:patrons/temp max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:patrons/temp max_hp

# Generate name (roll 1-125 for first and last)
execute store result storage evercraft:patrons/temp first_name int 1 run random value 1..125
execute store result storage evercraft:patrons/temp last_name int 1 run random value 1..125
function evercraft:mobs/patrons/get_name with storage evercraft:patrons/temp
# Apply name with Exquisite light purple hex color
data modify storage evercraft:patrons/temp color set value "FF55FF"
data modify storage evercraft:patrons/temp symbol set value "❉"
function evercraft:mobs/patrons/apply_name with storage evercraft:patrons/temp

# Tag and team
tag @s add ec.patron
tag @s add ec.patron.exquisite
tag @s add ec.patron.processed
tag @s add bestiary.settings.applied
team join ec.patron.exquisite @s

# Permanent glowing effect
effect give @s minecraft:glowing infinite 0 true

# Visual feedback — gold particle beam
particle dust{color:[1.0,0.7,0.0],scale:2.5} ~ ~ ~ 0 5 0 0 100 force
particle end_rod ~ ~1 ~ 0.4 0.6 0.4 0.05 20
playsound minecraft:entity.wither.spawn hostile @a[distance=..96] ~ ~ ~ 0.3 1.5

# Nearby notification (128 blocks)
tellraw @a[distance=..128] [{text:"❉ ",color:"light_purple"},{text:"A ",color:"white",bold:true},{text:"Patron",color:"light_purple",bold:true},{text:" has appeared nearby seeking to battle!",color:"white",bold:true},{text:" ❉",color:"light_purple"}]
