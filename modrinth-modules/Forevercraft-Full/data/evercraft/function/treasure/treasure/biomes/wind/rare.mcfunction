$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/wind/rare",CustomName:{text:"        Rare Wind Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:cloud ~ ~ ~ 0.7 0.7 0.7 0 100
playsound minecraft:entity.bat.takeoff master @a[distance=..15] ~ ~ ~ 10 0.9 1
