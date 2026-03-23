$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/dark_forest/ornate",CustomName:{text:"   Ornate Dark Forest Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0 20 force
particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.ravager.death master @a[distance=..25] ~ ~ ~ 2 0.7 1
