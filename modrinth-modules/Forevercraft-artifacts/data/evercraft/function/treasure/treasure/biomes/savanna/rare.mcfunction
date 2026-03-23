$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/savanna/rare",CustomName:{text:"     Rare Savanna Treasure",color:"aqua",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.7 0.7 0.7 0 100
playsound minecraft:entity.fox.eat master @a[distance=..15] ~ ~ ~ 2 0.1 1
