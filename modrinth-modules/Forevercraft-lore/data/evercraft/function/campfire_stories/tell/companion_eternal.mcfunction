# Campfire Story — Companion Eternal Bond
# Called with {player:"Name", pet:"Companion Name", day:N}
$tellraw @a[distance=..8] [{text:"",color:"white"},{text:"\n"},{text:"  \u2726 ","color":"gold"},{text:"The fire crackles and a memory stirs...\n","color":"#D4A574","italic":true},{text:"  ","color":"white"},{text:"\"","color":"#E8C99B"},{text:"$(player)","color":"white","bold":true},{text:" and their ","color":"#E8C99B"},{text:"$(pet)","color":"aqua","bold":true},{text:" share a bond that transcends time itself...\"","color":"#E8C99B"},{text:"\n"}]
execute at @s run playsound minecraft:block.campfire.crackle master @a[distance=..8] ~ ~ ~ 0.4 1.2
