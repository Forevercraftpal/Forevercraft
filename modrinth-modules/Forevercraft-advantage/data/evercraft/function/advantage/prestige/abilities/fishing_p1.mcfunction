# Prestige Ability: Water Net — passive morning fish trap
scoreboard players set @s adv.pa_fish1 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Fishing ★] ",color:"blue",bold:true},{text:"Water Net",color:"green"},{text:" — Place in water to auto-catch fish each morning!",color:"gray"}]

# Give the water net item via loot table (consistent components)
loot give @s loot evercraft:advantage/water_net_drop
tellraw @s [{text:"  ► ",color:"gray"},{text:"Water Net",color:"aqua"},{text:" added to your inventory!",color:"green"}]
tellraw @s [{text:"  ► ",color:"gray"},{text:"Place a barrel with 3+ water source sides to deploy.",color:"gray"}]
