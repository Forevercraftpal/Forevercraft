# Forge Bond notification (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"gray"},{text:" activated Forge Bond! ",color:"yellow"},{text:"+50 Advantage XP!",color:"green","bold":true}]
$playsound minecraft:block.anvil.use player @a[scores={ec.party_id=$(pid)},distance=..16] ~ ~ ~ 0.5 1.0
