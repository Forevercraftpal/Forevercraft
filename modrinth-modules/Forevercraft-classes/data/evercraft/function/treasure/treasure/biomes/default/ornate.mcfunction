$execute as $(name) run function evercraft:treasure/treasure/player/update/ornate

$tellraw $(name) [{text:"✦ ",color:"dark_purple"},{text:"You discovered an ",color:"light_purple"},{text:"ORNATE",color:"dark_purple",bold:true},{text:" treasure!",color:"light_purple"}]
$execute as $(name) at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1

setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"evercraft:treasure/chests/default/ornate",CustomName:{text:"      Ornate Standard Treasure",color:"dark_red",bold:false,italic:false}} destroy


particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.5 50
playsound minecraft:ui.toast.challenge_complete master @a[distance=..25] ~ ~ ~ 0.5 1.9 1