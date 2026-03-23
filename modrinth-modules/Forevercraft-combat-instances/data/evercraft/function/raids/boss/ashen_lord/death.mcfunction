# The Ashen Lord — Death Handler
# Drops loot, cleans up boss-specific entities

# Boss-specific cleanup
kill @e[tag=ec.rd_al_spawner]
kill @e[tag=ec.rd_al_blaze]
kill @e[tag=ec.rd_al_lantern]
kill @e[tag=ec.rd_al_safe]
kill @e[tag=ec.rd_al_anchor]

# Victory dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_red"},{text:"The Ashen Lord",color:"red",bold:true},{text:" crumbles to ash, the eternal fire extinguished at last.",color:"gray",italic:true}]

# Loot drops to all participants
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/ashen_lord/loot
