$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/soul_valley/rare",CustomName:{text:"   Rare Soul Valley Treasure",color:"aqua",bold:false,italic:false}} destroy


particle soul ~ ~ ~ 0.7 0.7 0.7 0 20
playsound minecraft:entity.ghast.scream master @a[distance=..15] ~ ~ ~ 2 1 1
