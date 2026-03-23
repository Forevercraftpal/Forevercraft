$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/ocean/ornate",CustomName:{text:"     Ornate Ocean Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:glow ~ ~ ~ 0.8 0.8 0.8 0.1 100 force
playsound minecraft:entity.glow_squid.death master @a[distance=..25] ~ ~ ~ 2 0.8 1
