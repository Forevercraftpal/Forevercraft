# Dimensional Rift — Spawn Rift Mob
# Executed as each player, at their position
# 40% chance to spawn a buffed rift mob nearby

# 40% chance roll — exit if miss
execute store result score @s ec.temp run random value 1..100
execute unless score @s ec.temp matches 1..40 run return 0

# Summon temp marker at player pos
summon marker ~ ~ ~ {Tags:["RIFT.temp"]}

# Spread to random surface position 10-60 blocks away
spreadplayers ~ ~ 10 60 false @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest]

# Roll for mob type: Magma Cube(30%), Wither Skeleton(25%), Piglin Brute(15%), Enderman(15%), Shulker(10%), Ghast(5%)
execute store result score #rift_mob ec.temp run random value 1..100

execute if score #rift_mob ec.temp matches 1..30 at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run summon magma_cube ~ ~ ~ {Tags:["RIFT.Mob","RIFT.new"],size:3,CustomName:{text:"Magma Cube Rift Spawn",color:"dark_purple"}}
execute if score #rift_mob ec.temp matches 31..55 at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run summon wither_skeleton ~ ~ ~ {Tags:["RIFT.Mob","RIFT.new"],CustomName:{text:"Wither Skeleton Rift Spawn",color:"dark_purple"}}
execute if score #rift_mob ec.temp matches 56..70 at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run summon piglin_brute ~ ~ ~ {Tags:["RIFT.Mob","RIFT.new"],IsImmuneToZombification:1b,CustomName:{text:"Piglin Brute Rift Spawn",color:"dark_purple"}}
execute if score #rift_mob ec.temp matches 71..85 at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run summon enderman ~ ~ ~ {Tags:["RIFT.Mob","RIFT.new"],CustomName:{text:"Enderman Rift Spawn",color:"dark_purple"}}
execute if score #rift_mob ec.temp matches 86..95 at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run summon shulker ~ ~ ~ {Tags:["RIFT.Mob","RIFT.new"],CustomName:{text:"Shulker Rift Spawn",color:"dark_purple"}}
execute if score #rift_mob ec.temp matches 96..100 at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run summon ghast ~ ~5 ~ {Tags:["RIFT.Mob","RIFT.new"],CustomName:{text:"Ghast Rift Spawn",color:"dark_purple"}}

# Apply buffs to newly spawned rift mob
# +50% HP
execute as @e[tag=RIFT.new,limit=1] run attribute @s max_health modifier add ec_rift_hp 0.5 add_multiplied_base
# Heal to new max HP (world boss pattern — instant effects are most reliable)
execute as @e[tag=RIFT.new,limit=1] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute as @e[tag=RIFT.new,limit=1] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true
# Backup: reliable two-step health sync (lesson 53)
execute as @e[tag=RIFT.new,limit=1] store result storage evercraft:calendar temp.max_hp float 1 run attribute @s max_health get
execute as @e[tag=RIFT.new,limit=1] run data modify entity @s Health set from storage evercraft:calendar temp.max_hp
# +25% damage (silently fails for mobs without attack_damage like ghast/shulker)
execute as @e[tag=RIFT.new,limit=1] run attribute @s attack_damage modifier add ec_rift_dmg 0.25 add_multiplied_base
# Glowing effect (infinite, ambient)
execute as @e[tag=RIFT.new,limit=1] run effect give @s glowing infinite 0 true
# Prevent despawn + suppress vanilla loot drops
execute as @e[tag=RIFT.new,limit=1] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# Clean up temp tags
execute as @e[tag=RIFT.new] run tag @s remove RIFT.new

# Impact effects at spawn location
execute at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run particle minecraft:reverse_portal ~ ~1 ~ 2 2 2 0.5 20
execute at @e[type=marker,tag=RIFT.temp,limit=1,sort=nearest] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.6 0.5

# Kill temp marker
kill @e[type=marker,tag=RIFT.temp]
