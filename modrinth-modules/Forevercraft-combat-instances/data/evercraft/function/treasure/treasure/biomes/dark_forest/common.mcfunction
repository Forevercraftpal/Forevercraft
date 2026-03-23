$execute as $(name) run function evercraft:treasure/treasure/player/update/common

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/dark_forest/common",CustomName:{text:" Common Dark Forest Treasure",color:"white",bold:false,italic:false}} destroy

particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..7] ~ ~ ~
