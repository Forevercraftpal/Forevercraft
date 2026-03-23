# Pantry Menu — Retrieve item from slot (macro)
# Args: pid, slot

# Summon temp item entity, copy stored item data
execute at @s run summon item ~ ~1 ~ {Tags:["ec.pantry_tmp"],PickupDelay:0,Item:{id:"minecraft:stone",count:1}}
$data modify entity @e[type=item,tag=ec.pantry_tmp,limit=1] Item set from storage evercraft:pantry bags.$(pid).$(slot).item
tp @e[type=item,tag=ec.pantry_tmp] @s
tag @e[type=item,tag=ec.pantry_tmp] remove ec.pantry_tmp

# Clear the slot in storage
$data modify storage evercraft:pantry bags.$(pid).$(slot) set value {}

# Sound + feedback
playsound minecraft:item.bundle.remove_one master @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"[Pantry] ",color:"gold"},{text:"Item retrieved!",color:"yellow"}]
