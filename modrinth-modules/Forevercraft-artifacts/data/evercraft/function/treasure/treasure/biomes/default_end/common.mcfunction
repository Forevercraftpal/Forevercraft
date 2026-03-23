$execute as $(name) run function evercraft:treasure/treasure/player/update/common

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/end/common",CustomName:{text:"       Common End Treasure",color:"white",bold:false,italic:false}} destroy


particle minecraft:dragon_breath ~ ~ ~ 0.6 0.6 0.6 0 75 force
playsound minecraft:entity.enderman.teleport ambient @a[distance=..7] ~ ~ ~2 0.5 1
