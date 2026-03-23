$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/wind/ornate",CustomName:{text:"        Ornate Wind Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:cloud ~ ~ ~ 0.7 0.7 0.7 0.2 150
particle enchant ~ ~ ~ 1 1 1 0 150 force
playsound minecraft:entity.firework_rocket.launch master @a[distance=..25] ~ ~ ~ 0.8 0.3 1
