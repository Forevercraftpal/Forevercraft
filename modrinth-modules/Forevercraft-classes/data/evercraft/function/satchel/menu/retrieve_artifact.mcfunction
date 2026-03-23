# Satchel Menu — Retrieve artifact from slot back to player (macro)
# Run as player. Args from storage: bid, slot

# Copy the stored item to temp
$data modify storage evercraft:satchel temp.restore_item set from storage evercraft:satchel bags.$(bid).$(slot).item

# Give the item back: summon item entity with stored NBT, teleport to player
execute at @s run summon item ~ ~1 ~ {Tags:["ec.satchel_restore"],PickupDelay:0,Item:{id:"minecraft:stone",count:1}}
data modify entity @e[type=item,tag=ec.satchel_restore,limit=1] Item set from storage evercraft:satchel temp.restore_item
tp @e[type=item,tag=ec.satchel_restore] @s
tag @e[type=item,tag=ec.satchel_restore] remove ec.satchel_restore

# Clear the slot in storage
$data modify storage evercraft:satchel bags.$(bid).$(slot) set value {}

# Decrement stored count
scoreboard players remove @s ec.satchel_count 1
execute if score @s ec.satchel_count matches ..-1 run scoreboard players set @s ec.satchel_count 0

# Sound + feedback
playsound minecraft:item.bundle.remove_one master @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Artifact retrieved!",color:"yellow"}]
