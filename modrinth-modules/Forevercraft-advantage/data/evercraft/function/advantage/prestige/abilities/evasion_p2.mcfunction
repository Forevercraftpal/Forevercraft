# Prestige Ability: Vanishing Dodge — become invisible for 2s on dodge
# Already hooked in evasion_dodge.mcfunction (checks adv.pres_evas matches 2..)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Evasion ★★] ",color:"white",bold:true},{text:"Vanishing Dodge",color:"green"},{text:" — Dodging grants 2s invisibility!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
