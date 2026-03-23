$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/flower/rare",CustomName:{text:"      Rare Flower Treasure",color:"aqua",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:rose_bush"} ~ ~ ~ 0.7 0.7 0.7 0 100
playsound minecraft:block.grass.break master @a[distance=..15] ~ ~ ~ 10 0.1 1
