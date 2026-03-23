# Reaper — World Boss Kill (+200 renown)
# Called from bosses/rewards/give_participant as each participant

scoreboard players add @s rp.renown 200
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"✦ ",color:"green"},{text:"A champion of the realm! ",color:"green",italic:true},{text:"(+200 Renown)",color:"gray"}]
