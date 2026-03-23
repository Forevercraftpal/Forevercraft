# The Deepcrawler — Death Handler

# Boss-specific cleanup
kill @e[tag=ec.rd_dc_wall_pos]
kill @e[tag=ec.rd_dc_lever]
kill @e[tag=ec.rd_dc_spider]

# Victory dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_gray"},{text:"The Deepcrawler",color:"gray",bold:true},{text:" collapses, the tunnels falling silent at last.",color:"gray",italic:true}]

# Loot drops to all participants
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/deepcrawler/loot
