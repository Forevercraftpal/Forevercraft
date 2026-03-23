$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/end/rare",CustomName:{text:"        Rare End Treasure",color:"aqua",bold:false,italic:false}} destroy

particle minecraft:nautilus ~ ~0.25 ~ 0.7 0.7 0.7 1 200
playsound minecraft:entity.enderman.death master @a[distance=..15] ~ ~ ~ 0.2 0.6 1
