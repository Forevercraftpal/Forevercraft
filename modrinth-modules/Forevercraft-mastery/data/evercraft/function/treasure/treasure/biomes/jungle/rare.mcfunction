$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/jungle/rare",CustomName:{text:"      Rare Jungle Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:sneeze ~ ~ ~ 0.5 0.5 0.5 0 100
playsound minecraft:entity.panda.death master @a[distance=..15] ~ ~ ~ 0.6 0.1 1
