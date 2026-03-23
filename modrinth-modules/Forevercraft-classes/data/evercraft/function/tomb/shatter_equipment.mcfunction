# Tomb System — Drop Equipment Items from Shattered Grave
# @s = grave marker with ec.tomb_shattering tag
# Spawns each equipment slot's item as an item entity at grave location

# Helper: for each slot with an actual item, summon an item entity and copy the data

# === HEAD ===
execute if data entity @s data.Equipment.head.id run summon item ~ ~0.5 ~ {Tags:["ec.tomb_drop"],PickupDelay:40s,Age:0s}
execute if data entity @s data.Equipment.head.id run data modify entity @e[type=item,tag=ec.tomb_drop,limit=1] Item set from entity @s data.Equipment.head
execute if entity @e[type=item,tag=ec.tomb_drop] run tag @e[type=item,tag=ec.tomb_drop] remove ec.tomb_drop

# === CHEST ===
execute if data entity @s data.Equipment.chest.id run summon item ~ ~0.5 ~ {Tags:["ec.tomb_drop"],PickupDelay:40s,Age:0s}
execute if data entity @s data.Equipment.chest.id run data modify entity @e[type=item,tag=ec.tomb_drop,limit=1] Item set from entity @s data.Equipment.chest
execute if entity @e[type=item,tag=ec.tomb_drop] run tag @e[type=item,tag=ec.tomb_drop] remove ec.tomb_drop

# === LEGS ===
execute if data entity @s data.Equipment.legs.id run summon item ~ ~0.5 ~ {Tags:["ec.tomb_drop"],PickupDelay:40s,Age:0s}
execute if data entity @s data.Equipment.legs.id run data modify entity @e[type=item,tag=ec.tomb_drop,limit=1] Item set from entity @s data.Equipment.legs
execute if entity @e[type=item,tag=ec.tomb_drop] run tag @e[type=item,tag=ec.tomb_drop] remove ec.tomb_drop

# === FEET ===
execute if data entity @s data.Equipment.feet.id run summon item ~ ~0.5 ~ {Tags:["ec.tomb_drop"],PickupDelay:40s,Age:0s}
execute if data entity @s data.Equipment.feet.id run data modify entity @e[type=item,tag=ec.tomb_drop,limit=1] Item set from entity @s data.Equipment.feet
execute if entity @e[type=item,tag=ec.tomb_drop] run tag @e[type=item,tag=ec.tomb_drop] remove ec.tomb_drop

# === OFFHAND ===
execute if data entity @s data.Equipment.offhand.id run summon item ~ ~0.5 ~ {Tags:["ec.tomb_drop"],PickupDelay:40s,Age:0s}
execute if data entity @s data.Equipment.offhand.id run data modify entity @e[type=item,tag=ec.tomb_drop,limit=1] Item set from entity @s data.Equipment.offhand
execute if entity @e[type=item,tag=ec.tomb_drop] run tag @e[type=item,tag=ec.tomb_drop] remove ec.tomb_drop
