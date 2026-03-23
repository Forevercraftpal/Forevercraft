$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/end/ornate",CustomName:{text:"         Ornate End Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:enchant ~ ~ ~ 0.75 0.75 0.75 1 2000 force
particle block{block_state:"minecraft:end_portal_frame"} ~ ~ ~ 0.5 0.5 0.5 0 500 force
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..25] ~ ~ ~ 3 1.4 1
