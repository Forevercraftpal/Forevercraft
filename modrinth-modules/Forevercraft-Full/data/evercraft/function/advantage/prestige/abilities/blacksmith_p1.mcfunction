# Prestige Ability: Master Alloy — 2x smelt output chance + 50% less anvil XP
scoreboard players set @s adv.pa_blac1 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Blacksmith ★] ",color:"gray",bold:true},{text:"Master Alloy",color:"green"},{text:" — 2x smelt output chance + 50% less anvil XP!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
