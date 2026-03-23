# Prestige Ability: Cartographer — locate nearest structure on command (50hr cooldown)
scoreboard players set @s adv.pa_expl2 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Explorer ★★] ",color:"dark_aqua",bold:true},{text:"Cartographer",color:"green"},{text:" — Locate nearest structure on command! 50hr cooldown.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
