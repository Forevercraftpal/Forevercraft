# Prestige Ability: Master Angler — third net + double catches + treasure loot
scoreboard players set @s adv.pa_fish3 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Fishing ★★★] ",color:"blue",bold:true},{text:"Master Angler",color:"green"},{text:" — Third net + double catches + rare treasure!",color:"gray"}]

# Give a third water net item
loot give @s loot evercraft:advantage/water_net_drop
tellraw @s [{text:"  ► ",color:"gray"},{text:"Water Net",color:"aqua"},{text:" added to your inventory!",color:"green"}]

# Upgrade all existing deployed WaterNet markers to master_angler mode
execute as @e[type=marker,tag=WaterNet] run data modify entity @s data.master_angler set value 1b
tellraw @s [{text:"  ► ",color:"gray"},{text:"All deployed Water Nets upgraded to Master Angler!",color:"green"}]
tellraw @s [{text:"  ► ",color:"gray"},{text:"16 catches per morning + chance for treasure loot.",color:"aqua"}]

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
