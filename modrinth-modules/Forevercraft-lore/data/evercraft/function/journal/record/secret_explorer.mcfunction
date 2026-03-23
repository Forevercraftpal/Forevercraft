# Secret 5: World Explorer — Discover 15+ unique structure types
tag @s add jn.s5
scoreboard players add @s jn.secret_count 1
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"Secret Discovered: ",color:"yellow",bold:true},{text:"World Explorer",color:"dark_purple"}]
tellraw @s [{text:"  You have explored 15+ unique structure types!",color:"gray",italic:true}]
function evercraft:journal/regions/check_all
