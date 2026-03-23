$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/basalt/rare",CustomName:{text:"  Rare Basalt Deltas Treasure",color:"aqua",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:blackstone"} ~ ~ ~ 0.7 0.7 0.7 0 200
playsound minecraft:entity.iron_golem.hurt master @a[distance=..15] ~ ~ ~ 2 0.1 1
