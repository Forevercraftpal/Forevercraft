$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/lush_caves/ornate",CustomName:{text:"   Ornate Lush Caves Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:composter ~ ~ ~ 0.75 0.75 0.75 0 100 force
particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.75 0.75 0.75 0 150 force
playsound minecraft:entity.bee.death master @a[distance=..25] ~ ~ ~ 10 0.2 1
