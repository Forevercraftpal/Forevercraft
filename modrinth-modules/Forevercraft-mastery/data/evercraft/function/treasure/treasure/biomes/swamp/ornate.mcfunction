$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/swamp/ornate",CustomName:{text:"       Ornate Swamp Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:wax_off ~ ~ ~ 0.5 0.5 0.5 0 100 force
particle minecraft:falling_obsidian_tear ~ ~ ~ 0.5 0.5 0.5 0 100 force
playsound minecraft:block.respawn_anchor.charge master @a[distance=..25] ~ ~ ~ 2 0.5 1
