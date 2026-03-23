# Notify party of Marked for Death (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"dark_gray"},{text:" marked a target! ",color:"light_purple"},{text:"+25% damage",color:"red","bold":true}]
$playsound minecraft:entity.arrow.hit_player player @a[scores={ec.party_id=$(pid)}] ~ ~ ~ 0.6 0.6
