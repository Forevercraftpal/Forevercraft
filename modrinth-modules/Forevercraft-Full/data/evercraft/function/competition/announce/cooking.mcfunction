# Competition Announce — Cooking Contest
bossbar set minecraft:competition name [{text:"Cooking Contest",color:"gold",bold:true},{text:" — Cook food items!",color:"yellow"}]

title @a times 10 60 20
title @a title {text:"Cooking Contest!",color:"gold",bold:true}
title @a subtitle {text:"Cook as many food items as possible!",color:"yellow"}

tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @a [{text:"  ",color:"gold"},{text:"COOKING CONTEST",color:"gold",bold:true}]
tellraw @a [{text:"  Smelt food in furnaces and smokers!",color:"yellow"}]
tellraw @a [{text:"  +1 per food item cooked",color:"gray"}]
tellraw @a [{text:"  Duration: 5 minutes",color:"dark_gray"}]
tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
