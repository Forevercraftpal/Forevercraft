# Pack Mule — Retrieve Item (macro)
# $(pid) = player ID, $(slot) = s0/s1/s2

# Summon temporary item entity with stored NBT
execute at @s run summon item ~ ~1 ~ {Tags:["ec.mule_restore"],PickupDelay:0,Item:{id:"minecraft:stone",count:1}}
$data modify entity @e[type=item,tag=ec.mule_restore,limit=1] Item set from storage evercraft:buddy mule.$(pid).$(slot).item
tp @e[type=item,tag=ec.mule_restore] @s
tag @e[type=item,tag=ec.mule_restore] remove ec.mule_restore

# Clear the slot
$data modify storage evercraft:buddy mule.$(pid).$(slot) set value {}

# Sound + feedback
playsound minecraft:item.bundle.remove_one master @s ~ ~ ~ 0.8 1.0
tellraw @s [{"text":"[Buddy] ","color":"#FFD700"},{"text":"Item retrieved from buddy's pack!","color":"yellow"}]
