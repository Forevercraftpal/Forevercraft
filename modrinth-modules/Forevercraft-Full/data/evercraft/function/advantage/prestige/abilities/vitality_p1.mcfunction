# Prestige Ability: Vital Regen — passive regen when low HP
# Already handled in tick/main (checks adv.pres_vita matches 1.. + is_low_hp predicate)
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Vitality ★] ",color:"red",bold:true},{text:"Vital Regen",color:"green"},{text:" — You regenerate health when below 50% HP!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
