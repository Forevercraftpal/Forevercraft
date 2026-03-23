# The Crimson Bulwark — Death Handler

# Boss-specific cleanup
kill @e[tag=ec.rd_cb_pillar]
kill @e[tag=ec.rd_cb_banner]
kill @e[tag=ec.rd_cb_guard]

# Victory dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_red"},{text:"The Crimson Bulwark",color:"red",bold:true},{text:" falls, its shields shattering across the throne room floor.",color:"gray",italic:true}]

# Loot drops to all participants
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/crimson_bulwark/loot
