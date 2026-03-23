$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/dark_forest/rare",CustomName:{text:"  Rare Dark Forest Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:damage_indicator ~ ~-0.1 ~ 0.6 0.6 0.6 0 40
playsound minecraft:entity.vindicator.celebrate master @a[distance=..15] ~ ~ ~ 1 0.7 1
