# Prestige Ability: Iron Will — permanent Resistance I
# Applied via reapply_all (effect give resistance infinite)
effect give @s minecraft:resistance infinite 0 true
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Vitality ★★★] ",color:"red",bold:true},{text:"Iron Will",color:"green"},{text:" — You gain permanent Resistance I!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
