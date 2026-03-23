# Prestige Ability: Green Thumb — crops auto-replant on harvest
scoreboard players set @s adv.pa_gath1 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Gathering ★] ",color:"green",bold:true},{text:"Green Thumb",color:"green"},{text:" — Crops auto-replant on harvest!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
