# Reaper — Bounty Complete (+100 renown)
# Called from bounty completion as the player

scoreboard players add @s rp.renown 100
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"✦ ",color:"green"},{text:"Justice served. ",color:"green",italic:true},{text:"(+100 Renown)",color:"gray"}]
