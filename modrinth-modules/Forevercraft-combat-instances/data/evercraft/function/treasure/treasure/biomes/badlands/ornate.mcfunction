$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/badlands/ornate",CustomName:{text:"     Ornate Badlands Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:ash ~ ~ ~ 1 1 1 0 1000 force
particle minecraft:wax_on ~ ~ ~ 0.75 0.75 0.75 0 150 force
playsound minecraft:entity.blaze.hurt master @a[distance=..25] ~ ~ ~ 10 0.1 1
