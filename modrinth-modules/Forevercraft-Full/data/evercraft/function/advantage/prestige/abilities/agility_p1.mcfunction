# Prestige Ability: Sprint Persist — momentum continues briefly after sprinting
scoreboard players set @s adv.pa_agil1 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Agility ★] ",color:"aqua",bold:true},{text:"Sprint Persist",color:"green"},{text:" — Your momentum carries forward after sprinting!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
