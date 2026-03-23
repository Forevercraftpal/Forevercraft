# Field Medic notification (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"red"},{text:" activated Field Medic! ",color:"yellow"},{text:"Allies healed!",color:"green","bold":true}]
$playsound minecraft:entity.player.levelup player @a[scores={ec.party_id=$(pid),adv.taskmaster=10..},distance=..48] ~ ~ ~ 0.5 1.5
