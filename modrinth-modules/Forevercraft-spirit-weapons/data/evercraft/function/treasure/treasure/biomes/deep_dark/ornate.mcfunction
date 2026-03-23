$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/deep_dark/ornate",CustomName:{text:"    Ornate Deep Dark Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:sculk_soul ~ ~ ~ 0.8 0.8 0.8 0 100
particle enchant ~ ~ ~ 0.5 0.5 0.5 0 150 force
playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..25] ~ ~ ~ 5 0.6 1
