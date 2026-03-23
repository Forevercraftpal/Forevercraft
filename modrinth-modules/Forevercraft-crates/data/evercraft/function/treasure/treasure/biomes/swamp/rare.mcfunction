$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/swamp/rare",CustomName:{text:"       Rare Swamp Treasure",color:"aqua",bold:false,italic:false}} destroy


particle minecraft:item_slime ~ ~ ~ 0.5 0.5 0.5 2 100
playsound minecraft:item.axe.wax_off master @a[distance=..15] ~ ~ ~ 2 0.1 1
