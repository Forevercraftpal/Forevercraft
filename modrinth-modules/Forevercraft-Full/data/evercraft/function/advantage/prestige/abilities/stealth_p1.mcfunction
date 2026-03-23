# Prestige Ability: Shadow Cloak — invisibility while sneaking
# Already handled inline in tick/main (checks adv.pres_stea matches 1.. + is_sneaking)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Stealth ★] ",color:"dark_gray",bold:true},{text:"Shadow Cloak",color:"green"},{text:" — Become invisible while sneaking!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
