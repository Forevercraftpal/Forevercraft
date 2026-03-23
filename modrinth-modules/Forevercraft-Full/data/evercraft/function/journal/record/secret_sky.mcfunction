# Secret 2: Sky Wanderer — Reach above Y 300
tag @s add jn.s2
scoreboard players add @s jn.secret_count 1
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"Secret Discovered: ",color:"yellow",bold:true},{text:"Sky Wanderer",color:"dark_purple"}]
tellraw @s [{text:"  You reached the sky above Y 300!",color:"gray",italic:true}]
function evercraft:journal/regions/check_all
