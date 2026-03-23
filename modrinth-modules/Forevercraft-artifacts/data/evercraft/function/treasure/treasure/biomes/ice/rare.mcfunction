$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/ice/rare",CustomName:{text:"         Rare Ice Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 0.1 50 force
playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 0.6 0.1 1
