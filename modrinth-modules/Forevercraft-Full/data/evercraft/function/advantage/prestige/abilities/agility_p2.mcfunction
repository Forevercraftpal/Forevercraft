# Prestige Ability: Double Jump — brief vertical boost (15s cooldown)
# Already hooked in tick/main (cooldown decrement for adv.pa_agil2_cd, sneak+airborne detection)
scoreboard players set @s adv.pa_agil2 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Agility ★★] ",color:"aqua",bold:true},{text:"Double Jump",color:"green"},{text:" — Sneak while airborne for a vertical boost! 15s cooldown.",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
