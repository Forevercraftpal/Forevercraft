# Campfire Story — Heroic Quest Completion
# Called with {player:"Name", day:N}
$tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The fire crackles and a memory stirs...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"The village still speaks of when ","color":"#E8C99B"},{text:"$(player)","color":"white","bold":true},{text:" completed that heroic quest. Few have such courage...\"","color":"#E8C99B"},{text:"\n"}]
execute at @s run playsound minecraft:block.campfire.crackle master @a[distance=..8] ~ ~ ~ 0.4 1.2
