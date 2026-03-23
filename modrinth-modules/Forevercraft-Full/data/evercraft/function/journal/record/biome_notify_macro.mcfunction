# Biome discovery notification — macro
$tellraw @s [{text:"✦ ",color:"dark_aqua"},{text:"[Journal] ",color:"gold"},{text:"Biome Discovered: ",color:"yellow"},{text:"$(bname)",color:"green"},{text:" (",color:"gray"},{score:{name:"@s",objective:"jn.biome_count"},color:"aqua"},{text:"/25)",color:"gray"}]
