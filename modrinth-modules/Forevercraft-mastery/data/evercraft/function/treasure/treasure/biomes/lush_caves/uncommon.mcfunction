$execute as $(name) run function evercraft:treasure/treasure/player/update/uncommon

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/lush_caves/uncommon",CustomName:{text:"  Uncommon Lush Caves Treasure",color:"blue",bold:false,italic:false}} destroy

particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0 40 force
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..10] ~ ~ ~ 1.5 1.2 1
