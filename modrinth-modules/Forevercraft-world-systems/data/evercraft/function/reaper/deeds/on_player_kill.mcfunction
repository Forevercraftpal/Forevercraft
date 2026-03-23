# Reaper — Player Kill (+150 infamy per kill)
# #rp_delta = number of kills since last check

# Add 150 per kill
scoreboard players operation #rp_add rp.temp = #rp_delta rp.temp
scoreboard players operation #rp_add rp.temp *= #150 rp.temp
scoreboard players operation @s rp.infamy += #rp_add rp.temp

# Cap at 5000
execute if score @s rp.infamy matches 5001.. run scoreboard players set @s rp.infamy 5000

# Notify
execute if score #rp_delta rp.temp matches 1 run tellraw @s [{text:"  ",color:"dark_gray"},{text:"☠ ",color:"dark_red"},{text:"Your infamy grows... ",color:"red",italic:true},{text:"(+150 Infamy)",color:"gray"}]
execute if score #rp_delta rp.temp matches 2.. run tellraw @s [{text:"  ",color:"dark_gray"},{text:"☠ ",color:"dark_red"},{text:"Blood stains your reputation... ",color:"red",italic:true},{text:"(+",color:"gray"},{score:{name:"#rp_add",objective:"rp.temp"},color:"gray"},{text:" Infamy)",color:"gray"}]
