# Announce leader promotion to party members
# Arg: pid (party ID)
# Run as the newly promoted leader

$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"yellow"},{text:" has been promoted to party leader.",color:"gray"}]
