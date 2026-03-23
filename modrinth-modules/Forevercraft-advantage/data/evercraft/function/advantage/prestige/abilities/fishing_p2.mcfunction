# Prestige Ability: Second Net — deploy a second water net
scoreboard players set @s adv.pa_fish2 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Fishing ★★] ",color:"blue",bold:true},{text:"Second Net",color:"green"},{text:" — Deploy a second water net!",color:"gray"}]

# Give another water net item via loot table
loot give @s loot evercraft:advantage/water_net_drop
tellraw @s [{text:"  ► ",color:"gray"},{text:"Water Net",color:"aqua"},{text:" added to your inventory!",color:"green"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
