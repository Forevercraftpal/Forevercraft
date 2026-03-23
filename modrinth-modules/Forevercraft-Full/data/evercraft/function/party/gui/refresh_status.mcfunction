# Party Management — Refresh Status Line (macro)
# Arg: pid (party ID)
# Run as the player

# Leader status: "Party Leader — X/4" in gold
$execute if score @s ec.party_role matches 1 run data modify entity @e[type=text_display,tag=Adv.PtyStatus,distance=..5,limit=1] text set value [{text:"Party Leader",color:"gold",bold:true},{text:" \u2014 ",color:"dark_gray"},{selector:"@a[scores={ec.party_id=$(pid)}]",separator:", ",color:"yellow"},{text:"",color:"dark_gray"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"ec.party_size"},color:"white"},{text:"/4)",color:"dark_gray"}]

# Member status: "Party Member — X/4" in green
execute if score @s ec.party_role matches 2 run data modify entity @e[type=text_display,tag=Adv.PtyStatus,distance=..5,limit=1] text set value [{text:"Party Member",color:"green",bold:true},{text:" \u2014 ",color:"dark_gray"},{text:"(",color:"dark_gray"},{score:{name:"@s",objective:"ec.party_size"},color:"white"},{text:"/4)",color:"dark_gray"}]
