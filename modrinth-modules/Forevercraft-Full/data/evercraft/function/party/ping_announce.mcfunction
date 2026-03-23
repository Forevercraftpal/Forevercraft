# Announce ping to party (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"yellow"},{text:" pinged their location!",color:"aqua"}]
$playsound minecraft:block.note_block.bell player @a[scores={ec.party_id=$(pid)}] ~ ~ ~ 1 1.2
