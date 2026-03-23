# The Eternal Pharaoh — Enter Phase 3: Time Dilation

tellraw @a[tag=ec.rd_participant] [{text:"",color:"gold"},{text:"The Eternal Pharaoh",color:"gold",bold:true},{text:": ",color:"dark_red"},{text:"\"TIME BENDS TO MY WILL!\"",color:"dark_red",bold:true,italic:true}]

execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:enchant ~ ~2 ~ 3 2 3 1.0 100
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Max power
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.2 add_multiplied_base
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 0.8 add_multiplied_base

# Initialize time dilation
scoreboard players set #rd_ep_time_state ec.var 0
scoreboard players set #rd_ep_time_timer ec.var 200
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run effect give @s speed 300 2 true

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Time warps! Watch for the pulse window to strike!",color:"yellow",bold:true}]
