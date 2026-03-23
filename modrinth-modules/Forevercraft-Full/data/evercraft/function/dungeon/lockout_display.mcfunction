# Dungeon Lockout — Display remaining time with structure name (macro)
$tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Cooldown: ",color:"gray"},{text:"$(days) day(s), $(hours) hour(s)",color:"yellow"},{text:" remaining for ",color:"gray"},{text:"$(struct_name)",color:"light_purple",bold:true},{text:".",color:"gray"}]
