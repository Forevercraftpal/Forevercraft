# Prestige Ability: Wayfinder — teleport to nearest unexplored structure (24hr cooldown)
scoreboard players set @s adv.pa_expl3 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Explorer ★★★] ",color:"dark_aqua",bold:true},{text:"Wayfinder",color:"green"},{text:" — Teleport to nearest unexplored structure! 24hr cooldown.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
