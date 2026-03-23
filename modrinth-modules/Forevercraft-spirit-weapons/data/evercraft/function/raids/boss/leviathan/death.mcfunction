# The Leviathan — Death Handler

# Boss-specific cleanup
kill @e[tag=ec.rd_lv_whirlpool]
kill @e[tag=ec.rd_lv_guard]
kill @e[tag=ec.rd_lv_sponge]

# Victory dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_aqua"},{text:"The Leviathan",color:"dark_aqua",bold:true},{text:" sinks into the abyss, the waters calming at last.",color:"gray",italic:true}]

# Loot drops
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/leviathan/loot
