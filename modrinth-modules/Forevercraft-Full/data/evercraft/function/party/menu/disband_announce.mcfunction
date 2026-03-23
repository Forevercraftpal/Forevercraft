# Announce party disbanding (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{text:"The party has been disbanded by the leader.",color:"red"}]
$playsound minecraft:block.note_block.bass player @a[scores={ec.party_id=$(pid)}] ~ ~ ~ 1 0.5
