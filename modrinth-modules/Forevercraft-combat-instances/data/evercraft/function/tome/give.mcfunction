# Tome of Experience — Give a fresh tome to the player
loot give @s loot evercraft:tome/tome_of_experience
tellraw @s [{text:"✦ ",color:"gold"},{text:"You received a ",color:"gray"},{text:"Tome of Experience",color:"gold",bold:true},{text:"!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
