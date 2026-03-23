# Convert mob to Mythical Patron — BOSS TIER
# Stats: 250hp (on 20hp base), +20 armor, +80% speed, +300% attack damage, immune to knockback

# Apply attribute modifiers
attribute @s max_health modifier add evercraft:patrons/patron 11.5 add_multiplied_total
attribute @s armor modifier add evercraft:patrons/patron 20 add_value
attribute @s movement_speed modifier add evercraft:patrons/patron 0.8 add_multiplied_total
attribute @s attack_damage modifier add evercraft:patrons/patron 3.0 add_multiplied_total
attribute @s knockback_resistance modifier add evercraft:patrons/patron 1.0 add_value

# Heal to new max health (instant effects + storage backup)
execute if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
execute store result storage evercraft:patrons/temp max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:patrons/temp max_hp

# Generate name (roll 1-125 for first and last)
execute store result storage evercraft:patrons/temp first_name int 1 run random value 1..125
execute store result storage evercraft:patrons/temp last_name int 1 run random value 1..125
function evercraft:mobs/patrons/get_name with storage evercraft:patrons/temp
# Apply name with Mythical gold hex color
data modify storage evercraft:patrons/temp color set value "FFAA00"
data modify storage evercraft:patrons/temp symbol set value "☄"
function evercraft:mobs/patrons/apply_name with storage evercraft:patrons/temp

# Tag and team
tag @s add ec.patron
tag @s add ec.patron.mythical
tag @s add ec.patron.processed
tag @s add bestiary.settings.applied
team join ec.patron.mythical @s

# Permanent glowing + Fire Resistance
effect give @s minecraft:glowing infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true

# Epic particle effects — dark purple beam with swirling particles
particle dust{color:[0.55,0.03,0.57],scale:3.0} ~ ~ ~ 0 8 0 0 150 force
particle reverse_portal ~ ~1 ~ 0.5 0.8 0.5 0.1 50
particle dragon_breath ~ ~0.5 ~ 0.4 0.4 0.4 0.02 30
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 0.5 0.6
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 0.5 0.8

# Global announcement
tellraw @a [{text:"☄ ",color:"gold"},{text:"A ",color:"white",bold:true},{text:"Patron",color:"gold",bold:true},{text:" has appeared nearby seeking to battle!",color:"white",bold:true},{text:" ☄",color:"gold"}]
