# Announce player leaving to party (macro)
# Arg: pid

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"yellow"},{text:" left the party.",color:"gray"}]
