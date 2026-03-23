# Secret 1: Depths of the World — Venture below Y -48
tag @s add jn.s1
scoreboard players add @s jn.secret_count 1
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"Secret Discovered: ",color:"yellow",bold:true},{text:"Depths of the World",color:"dark_purple"}]
tellraw @s [{text:"  You ventured into the deepest caverns below Y -48!",color:"gray",italic:true}]
function evercraft:journal/regions/check_all
