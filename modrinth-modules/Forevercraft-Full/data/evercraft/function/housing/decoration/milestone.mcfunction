# Housing Decoration — Milestone (Macro)
# Called with: {count:"N", tier:"Title", color:"color"}

title @s times 10 60 20
$title @s title [{text:"\u2302 ",color:"gold"},{text:"$(tier)",color:"$(color)",bold:true}]
$title @s subtitle [{text:"$(count) decorations placed!",color:"gray"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.6 1.2
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 1.5
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 0.5 1 0 15
