# Tomb System — Restore Equipment (armor + offhand) from Grave Marker
# @s = player receiving items
# ec.tomb_collecting tag on the source marker
# Equipment stored as {head:{},chest:{},legs:{},feet:{},offhand:{}} on marker data.Equipment
# Spawns each piece as an item entity with dummy Item + instant pickup

# === HEAD ===
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.head.id run summon item ~ ~ ~ {Tags:["ec.tomb_give"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.head.id run data modify entity @e[type=item,tag=ec.tomb_give,limit=1] Item set from entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.head
execute if entity @e[type=item,tag=ec.tomb_give] run tag @e[type=item,tag=ec.tomb_give] remove ec.tomb_give

# === CHEST ===
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.chest.id run summon item ~ ~ ~ {Tags:["ec.tomb_give"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.chest.id run data modify entity @e[type=item,tag=ec.tomb_give,limit=1] Item set from entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.chest
execute if entity @e[type=item,tag=ec.tomb_give] run tag @e[type=item,tag=ec.tomb_give] remove ec.tomb_give

# === LEGS ===
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.legs.id run summon item ~ ~ ~ {Tags:["ec.tomb_give"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.legs.id run data modify entity @e[type=item,tag=ec.tomb_give,limit=1] Item set from entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.legs
execute if entity @e[type=item,tag=ec.tomb_give] run tag @e[type=item,tag=ec.tomb_give] remove ec.tomb_give

# === FEET ===
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.feet.id run summon item ~ ~ ~ {Tags:["ec.tomb_give"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.feet.id run data modify entity @e[type=item,tag=ec.tomb_give,limit=1] Item set from entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.feet
execute if entity @e[type=item,tag=ec.tomb_give] run tag @e[type=item,tag=ec.tomb_give] remove ec.tomb_give

# === OFFHAND ===
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.offhand.id run summon item ~ ~ ~ {Tags:["ec.tomb_give"],PickupDelay:0s,Age:0s,Item:{id:"minecraft:stone",count:1}}
execute if data entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.offhand.id run data modify entity @e[type=item,tag=ec.tomb_give,limit=1] Item set from entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.Equipment.offhand
execute if entity @e[type=item,tag=ec.tomb_give] run tag @e[type=item,tag=ec.tomb_give] remove ec.tomb_give
