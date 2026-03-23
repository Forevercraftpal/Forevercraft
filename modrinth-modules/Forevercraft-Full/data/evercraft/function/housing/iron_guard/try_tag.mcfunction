# Housing — Try to tag an iron golem as a home guard
# Run as: untagged iron_golem near an HS.Marker, at golem position
# Tags hs.iron_guard if nearest player is in their home zone AND under guard limit

# Nearest player must be in their home zone (they built this golem)
execute unless entity @a[scores={hs.in_zone=1},distance=..10,limit=1] run return 0

# Count existing guards for this home zone (near the same marker)
execute store result score #ig_count ec.temp if entity @e[type=iron_golem,tag=hs.iron_guard,distance=..64]

# Limit: 3 guards per housing zone
execute if score #ig_count ec.temp matches 3.. run return 0

# Tag as home guard
tag @s add hs.iron_guard

# Disable drops on death
data merge entity @s {DeathLootTable:"minecraft:empty",PersistenceRequired:1b}

# Disable creeper explosions near this guard (10 block radius handled by tick)
# Auto-name based on guard number
scoreboard players add #ig_count ec.temp 1
execute if score #ig_count ec.temp matches 1 run data modify entity @s CustomName set value {text:"Guard I",color:"gold",bold:true}
execute if score #ig_count ec.temp matches 2 run data modify entity @s CustomName set value {text:"Guard II",color:"gold",bold:true}
execute if score #ig_count ec.temp matches 3 run data modify entity @s CustomName set value {text:"Guard III",color:"gold",bold:true}
data modify entity @s CustomNameVisible set value 1b

# Notify
execute as @a[scores={hs.in_zone=1},distance=..10,limit=1] run tellraw @s ["",{"text":"  "},{"text":"A new guard has joined your home defense!","color":"gold"}]
execute at @s run playsound minecraft:entity.iron_golem.repair player @a[distance=..32] ~ ~ ~ 1 0.8
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
