# Prestige Ability: Structure Sense — alert when within 100 blocks of a structure
scoreboard players set @s adv.pa_expl1 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Explorer ★] ",color:"dark_aqua",bold:true},{text:"Structure Sense",color:"green"},{text:" — Alert when within 100 blocks of a structure!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
