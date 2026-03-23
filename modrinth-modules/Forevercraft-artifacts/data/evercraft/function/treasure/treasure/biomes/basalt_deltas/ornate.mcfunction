$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/basalt/ornate",CustomName:{text:"  Ornate Basalt Deltas Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0 200
particle block{block_state:"minecraft:blackstone"} ~ ~ ~ 0.5 0.5 0.5 0 500 force
playsound minecraft:entity.blaze.death master @a[distance=..25] ~ ~ ~ 3 0.7 1
