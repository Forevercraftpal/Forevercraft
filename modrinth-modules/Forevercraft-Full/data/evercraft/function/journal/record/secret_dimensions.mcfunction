# Secret 3: Dimensional Traveler — Visit all 3 dimensions
tag @s add jn.s3
scoreboard players add @s jn.secret_count 1
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"Secret Discovered: ",color:"yellow",bold:true},{text:"Dimensional Traveler",color:"dark_purple"}]
tellraw @s [{text:"  You have set foot in all three dimensions!",color:"gray",italic:true}]
function evercraft:journal/regions/check_all
