# Prestige Ability: Ancient Ore — ultra-rare drop worth netherite or tokens
scoreboard players set @s adv.pa_mine3 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Mining ★★★] ",color:"gold",bold:true},{text:"Ancient Ore",color:"green"},{text:" — Ultra-rare drop worth 3 netherite or 20 tokens!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
