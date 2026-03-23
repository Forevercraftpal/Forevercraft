$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/mountain/ornate",CustomName:{text:"     Ornate Mountain Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle block{block_state:"minecraft:amethyst_cluster"} ~ ~ ~ 0.5 0.5 0.5 0 50 force
particle witch ~ ~ ~ 1 1 1 1 100 force
playsound minecraft:block.medium_amethyst_bud.break master @a[distance=..25] ~ ~ ~ 10 0.2 1
