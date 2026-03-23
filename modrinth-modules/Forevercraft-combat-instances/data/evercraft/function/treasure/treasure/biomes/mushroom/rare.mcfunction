$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mushroom/rare",CustomName:{text:"     Rare Mushroom Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:mycelium ~ ~ ~ 0.5 0.5 0.5 2 500
playsound minecraft:block.vine.fall master @a[distance=..15] ~ ~ ~ 10 0.1 1
