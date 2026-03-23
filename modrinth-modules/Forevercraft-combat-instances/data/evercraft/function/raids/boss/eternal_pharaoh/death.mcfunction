# The Eternal Pharaoh — Death Handler

kill @e[tag=ec.rd_ep_mummy]
kill @e[tag=ec.rd_ep_altar]
kill @e[tag=ec.rd_ep_pillar]

tellraw @a[tag=ec.rd_participant] [{text:"",color:"gold"},{text:"The Eternal Pharaoh",color:"gold",bold:true},{text:" crumbles to sand, the dynasty's curse finally broken.",color:"gray",italic:true}]

execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/eternal_pharaoh/loot
