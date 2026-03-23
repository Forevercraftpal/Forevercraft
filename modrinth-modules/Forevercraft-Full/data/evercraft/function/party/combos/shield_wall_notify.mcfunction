# Shield Wall notification (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"red"},{text:" raised a Shield Wall! ",color:"yellow"},{text:"Guaranteed dodge!",color:"white","bold":true}]
$playsound minecraft:item.shield.block player @a[scores={ec.party_id=$(pid)}] ~ ~ ~ 0.8 0.8
