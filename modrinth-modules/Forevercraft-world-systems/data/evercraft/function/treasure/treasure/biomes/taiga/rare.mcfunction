$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/taiga/rare",CustomName:{text:"       Rare Taiga Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:poof ~ ~ ~ 0.65 0.65 0.65 0 20
playsound minecraft:entity.fox.bite master @a[distance=..15] ~ ~ ~ 2 0.2 1
