$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/jungle/ornate",CustomName:{text:"      Ornate Jungle Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0 50 force
particle block{block_state:"minecraft:vine"} ~ ~ ~ 0.5 0.5 0.5 0 500 force
playsound minecraft:entity.husk.converted_to_zombie master @a[distance=..25] ~ ~ ~ 2 0.5 1
