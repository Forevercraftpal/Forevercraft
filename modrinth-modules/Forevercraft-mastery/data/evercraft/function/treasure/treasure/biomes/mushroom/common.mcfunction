$execute as $(name) run function evercraft:treasure/treasure/player/update/common

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mushroom/common",CustomName:{text:"   Common Mushroom Treasure",color:"white",bold:false,italic:false}} destroy


particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..7] ~ ~ ~