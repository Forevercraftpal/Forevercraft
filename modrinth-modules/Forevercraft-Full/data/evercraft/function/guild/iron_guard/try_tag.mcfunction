# Guild — Try to tag an iron golem as a guild guard
# Run as: untagged iron_golem near a GS.Marker, at golem position
# Tags gs.iron_guard if nearest player is in guild zone AND under guard limit

# Nearest player must be in their guild zone (they built this golem)
execute unless entity @a[scores={ec.guild_in_zone=1},distance=..10,limit=1] run return 0

# Count existing guild guards near this zone marker
execute store result score #ig_count ec.temp if entity @e[type=iron_golem,tag=gs.iron_guard,distance=..128]

# Limit: 8 guards per guild zone
execute if score #ig_count ec.temp matches 8.. run return 0

# Tag as guild guard
tag @s add gs.iron_guard

# Disable drops on death
data merge entity @s {DeathLootTable:"minecraft:empty",PersistenceRequired:1b}

# Auto-name based on guard number
scoreboard players add #ig_count ec.temp 1
execute if score #ig_count ec.temp matches 1 run data modify entity @s CustomName set value {text:"Guard I",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 2 run data modify entity @s CustomName set value {text:"Guard II",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 3 run data modify entity @s CustomName set value {text:"Guard III",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 4 run data modify entity @s CustomName set value {text:"Guard IV",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 5 run data modify entity @s CustomName set value {text:"Guard V",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 6 run data modify entity @s CustomName set value {text:"Guard VI",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 7 run data modify entity @s CustomName set value {text:"Guard VII",color:"yellow",bold:true}
execute if score #ig_count ec.temp matches 8 run data modify entity @s CustomName set value {text:"Guard VIII",color:"yellow",bold:true}
data modify entity @s CustomNameVisible set value 1b

# Notify
execute as @a[scores={ec.guild_in_zone=1},distance=..64,limit=1] run tellraw @s ["",{"text":"  "},{"text":"A new guard has joined the guild defense!","color":"yellow"}]
execute at @s run playsound minecraft:entity.iron_golem.repair player @a[distance=..32] ~ ~ ~ 1 0.8
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
