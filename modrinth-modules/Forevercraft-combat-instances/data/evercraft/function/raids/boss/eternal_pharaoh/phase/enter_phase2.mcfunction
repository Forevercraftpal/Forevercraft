# The Eternal Pharaoh — Enter Phase 2: The Shifting Sands

tellraw @a[tag=ec.rd_participant] [{text:"",color:"gold"},{text:"The Eternal Pharaoh",color:"gold",bold:true},{text:": ",color:"dark_red"},{text:"\"The sands obey only me. You are nothing before eternity!\"",color:"yellow",italic:true}]

execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.9,0.7,0.1],scale:2.0} ~ ~1 ~ 3 2 3 0.1 50
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:ambient.cave master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.4

execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.15 add_multiplied_base
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.4 add_multiplied_base
