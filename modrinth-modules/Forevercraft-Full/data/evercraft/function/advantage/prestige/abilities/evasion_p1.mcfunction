# Prestige Ability: Shadow Counter — teleport behind attacker on dodge
# Already hooked in evasion_dodge.mcfunction (checks adv.pres_evas matches 1..)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Evasion ★] ",color:"white",bold:true},{text:"Shadow Counter",color:"green"},{text:" — Dodging teleports you behind the nearest attacker!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
