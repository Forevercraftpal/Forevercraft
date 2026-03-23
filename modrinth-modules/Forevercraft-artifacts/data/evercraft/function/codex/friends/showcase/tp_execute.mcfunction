# Execute the teleport to best friend
# Macro: $(target_cid)

$tp @s @a[scores={companion.id=$(target_cid)},limit=1]
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Teleported to your best friend!",color:"light_purple"}]
