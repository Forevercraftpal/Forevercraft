# The Mossheart Warden — Death Handler

# Boss-specific cleanup
kill @e[tag=ec.rd_mw_core]
kill @e[tag=ec.rd_mw_gate]
kill @e[tag=ec.rd_mw_mob]
kill @e[tag=ec.rd_mw_safe_zone]

# Victory dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_green"},{text:"The Mossheart Warden",color:"green",bold:true},{text:" crumbles, the moss retreating into the stone.",color:"gray",italic:true}]

# Loot drops to all participants
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/mossheart_warden/loot
