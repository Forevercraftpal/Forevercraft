# Secret 4: Lore Collector — Find all 6 anecdotes
tag @s add jn.s4
scoreboard players add @s jn.secret_count 1
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
tellraw @s [{text:"✦ ",color:"gold"},{text:"[Journal] ",color:"gold"},{text:"Secret Discovered: ",color:"yellow",bold:true},{text:"Lore Collector",color:"dark_purple"}]
tellraw @s [{text:"  You found all six anecdotes — the world's stories are yours!",color:"gray",italic:true}]
function evercraft:journal/regions/check_all
