# Blitz notification (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"aqua"},{text:" triggered Blitz! ",color:"yellow"},{text:"Haste I boost!",color:"red","bold":true}]
$playsound minecraft:entity.breeze.wind_burst player @a[scores={ec.party_id=$(pid)}] ~ ~ ~ 0.6 1.2
