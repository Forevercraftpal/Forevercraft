# Prestige Ability: Bloodthirst — +50% bonus XP from mob crates and patrons
scoreboard players set @s adv.pa_vict2 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Victorian ★★] ",color:"dark_red",bold:true},{text:"Bloodthirst",color:"green"},{text:" — +50% bonus XP from mob crates and patron kills!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
