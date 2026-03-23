$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/dripstone/rare",CustomName:{text:"     Rare Dripstone Treasure",color:"aqua",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.7 0.7 0.7 0 500
playsound minecraft:item.shovel.flatten master @a[distance=..15] ~ ~ ~ 2 0.8 1
