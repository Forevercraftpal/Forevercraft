# Player Stats — Time & Distance
# ec.temp already holds hours played, ec.var holds km walked

tellraw @s {text:""}
tellraw @s [{text:"  ⏱ ",color:"gold"},{text:"Time & Distance",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Hours Played: ",color:"gray"},{score:{name:"@s",objective:"ec.temp"},color:"white"}]
tellraw @s [{text:"    Distance Walked: ",color:"gray"},{score:{name:"@s",objective:"ec.var"},color:"white"},{text:" km",color:"dark_gray"}]
tellraw @s [{text:"    Deaths: ",color:"gray"},{score:{name:"@s",objective:"ach.deaths"},color:"red"}]
tellraw @s [{text:"    Jumps: ",color:"gray"},{score:{name:"@s",objective:"ach.adj_jump"},color:"white"}]
