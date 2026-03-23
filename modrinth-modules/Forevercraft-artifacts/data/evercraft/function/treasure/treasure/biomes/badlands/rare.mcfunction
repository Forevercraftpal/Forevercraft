$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/badlands/rare",CustomName:{text:"    Rare Badlands Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0 100
playsound minecraft:entity.arrow.hit master @a[distance=..15] ~ ~ ~ 2 0.1 1
