$execute as $(name) run function evercraft:treasure/treasure/player/update/common

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/basalt/common",CustomName:{text:"Common Basalt Deltas Treasure",color:"white",bold:false,italic:false}} destroy

particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.blaze.shoot ambient @a[distance=..7] ~ ~ ~