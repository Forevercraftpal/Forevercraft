$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/desert/rare",CustomName:{text:"      Rare Desert Treasure",color:"aqua",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:glass"} 0.7 0.7 0 500 0 0 0 500 normal
playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 2 0.8 1
