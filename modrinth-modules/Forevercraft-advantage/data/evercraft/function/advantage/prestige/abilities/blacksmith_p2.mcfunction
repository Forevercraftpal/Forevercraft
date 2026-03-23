# Prestige Ability: Efficient Fuel — 50% chance to not consume furnace fuel
scoreboard players set @s adv.pa_blac2 1
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Blacksmith ★★] ",color:"gray",bold:true},{text:"Efficient Fuel",color:"green"},{text:" — 50% chance to not consume furnace fuel!",color:"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
