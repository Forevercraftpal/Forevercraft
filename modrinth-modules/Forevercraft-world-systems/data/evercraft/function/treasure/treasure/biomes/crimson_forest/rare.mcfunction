$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/crimson/rare",CustomName:{text:" Rare Crimson Forest Treasure",color:"aqua",bold:false,italic:false}} destroy


particle crimson_spore ~ ~ ~ 0.7 0.7 0.7 0 200
playsound minecraft:block.froglight.break master @a[distance=..15] ~ ~ ~ 10 0.1 1
