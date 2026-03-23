# Reaper — Raid Victory (+300 renown)
# Called from village/on_raid_victory as the player

scoreboard players add @s rp.renown 300
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"✦ ",color:"green"},{text:"The village sings your name! ",color:"green",italic:true},{text:"(+300 Renown)",color:"gray"}]
