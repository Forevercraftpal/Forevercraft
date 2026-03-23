$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/rare",CustomName:{text:"      Rare Standard Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0 50 force
playsound minecraft:entity.ender_dragon.growl master @a[distance=..15] ~ ~ ~ 0.3 1 1
