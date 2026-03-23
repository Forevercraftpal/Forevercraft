# Player Stats — Crates

tellraw @s {text:""}
tellraw @s [{text:"  📦 ",color:"yellow"},{text:"Crates",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Total Opened: ",color:"gray"},{score:{name:"@s",objective:"ach.crates_opened"},color:"gold",bold:true}]
tellraw @s [{text:"    Mining: ",color:"gray"},{score:{name:"@s",objective:"ach.crates_mining"},color:"white"},{text:" | Fishing: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.crates_fishing"},color:"white"},{text:" | Harvest: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.crates_harvest"},color:"white"}]
tellraw @s [{text:"    Mob: ",color:"gray"},{score:{name:"@s",objective:"ach.crates_mob"},color:"white"},{text:" | Structure: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.crates_structure"},color:"white"}]
tellraw @s [{text:"    Companion: ",color:"gray"},{score:{name:"@s",objective:"ec.crate_comp"},color:"white"},{text:" | Artifact: ",color:"dark_gray"},{score:{name:"@s",objective:"ec.crate_art"},color:"white"},{text:" | Achievement: ",color:"dark_gray"},{score:{name:"@s",objective:"ec.crate_ach"},color:"white"}]

# Compute crate streak (crates since last mythical)
scoreboard players operation @s ec.temp = @s ach.crates_opened
scoreboard players operation @s ec.temp -= @s ec.last_mythical_at
tellraw @s [{text:"    Streak: ",color:"gray"},{score:{name:"@s",objective:"ec.temp"},color:"gold"},{text:" crates since last Mythical",color:"dark_gray"}]
