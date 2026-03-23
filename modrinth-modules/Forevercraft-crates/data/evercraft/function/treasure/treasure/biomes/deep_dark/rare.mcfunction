$execute as $(name) run function evercraft:treasure/treasure/player/update/rare

$tellraw $(name) {text:"Something seems wedged in the rocks?!",color:"gray",italic:true}

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/deep_dark/rare",CustomName:{text:"    Rare Deep Dark Treasure",color:"aqua",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:sculk"} ~ ~ ~ 0.7 0.7 0.7 0 100
playsound minecraft:entity.warden.attack_impact master @a[distance=..15] ~ ~ ~ 10 0.8 1
