$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mushroom/ornate",CustomName:{text:"     Ornate Mushroom Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:brown_mushroom"} ~ ~ ~ 0.75 0.75 0.75 1 150
particle block{block_state:"minecraft:red_mushroom"} ~ ~ ~ 0.75 0.75 0.75 1 150
particle minecraft:composter ~ ~ ~ 0.75 0.75 0.75 1 150
playsound minecraft:entity.cow.hurt master @a[distance=..25] ~ ~ ~ 2 0.1 1
