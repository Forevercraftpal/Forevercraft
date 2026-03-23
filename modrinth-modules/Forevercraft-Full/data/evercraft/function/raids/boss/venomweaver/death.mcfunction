# The Venomweaver — Death Handler
# Drops loot, cleans up boss-specific entities

# Boss-specific cleanup
kill @e[tag=ec.rd_vw_perch]
kill @e[tag=ec.rd_vw_spider]
kill @e[tag=ec.rd_vw_egg]
kill @e[tag=ec.rd_vw_web]
kill @e[tag=ec.rd_vw_cloud]

# Victory dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_green"},{text:"The Venomweaver",color:"green",bold:true},{text:" shrivels, the vines releasing their grip at last.",color:"gray",italic:true}]

# Loot drops to all participants
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/venomweaver/loot
