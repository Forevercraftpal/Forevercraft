# Notify the target that their best friend teleported to them
# Macro: $(target_cid)

$execute as @a[scores={companion.id=$(target_cid)},limit=1] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your best friend teleported to you!",color:"light_purple"}]
$execute as @a[scores={companion.id=$(target_cid)},limit=1] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.0
