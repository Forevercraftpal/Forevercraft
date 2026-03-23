$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/ocean/rare",CustomName:{text:"       Rare Ocean Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0.1 50 force
playsound minecraft:block.conduit.deactivate master @a[distance=..15] ~ ~ ~ 0.5 1.3 1
