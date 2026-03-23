# Reaper — Villager Kill (+100 infamy per kill)
# #rp_delta = number of kills since last check

scoreboard players operation #rp_add rp.temp = #rp_delta rp.temp
scoreboard players operation #rp_add rp.temp *= #100 rp.temp
scoreboard players operation @s rp.infamy += #rp_add rp.temp

# Cap at 5000
execute if score @s rp.infamy matches 5001.. run scoreboard players set @s rp.infamy 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"☠ ",color:"dark_red"},{text:"The villagers will remember this... ",color:"red",italic:true},{text:"(+",color:"gray"},{score:{name:"#rp_add",objective:"rp.temp"},color:"gray"},{text:" Infamy)",color:"gray"}]
