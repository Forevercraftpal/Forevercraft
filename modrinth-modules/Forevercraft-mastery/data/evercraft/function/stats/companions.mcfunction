# Player Stats — Companions

tellraw @s {text:""}
tellraw @s [{text:"  🐾 ",color:"green"},{text:"Companions",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Adopted: ",color:"gray"},{score:{name:"@s",objective:"ach.comp_owned"},color:"white"},{text:" | Bonded: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.comp_bonded"},color:"white"},{text:" | Eternal: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.comp_eternal"},color:"white"}]
tellraw @s [{text:"    Interactions: ",color:"gray"},{score:{name:"@s",objective:"ach.comp_interacts"},color:"white"}]
