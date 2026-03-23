# Competition Announce — Mining Rush
bossbar set minecraft:competition name [{text:"Mining Rush",color:"gold",bold:true},{text:" — Mine ores!",color:"yellow"}]

title @a times 10 60 20
title @a title {text:"Mining Rush!",color:"gold",bold:true}
title @a subtitle {text:"Mine as many ores as possible!",color:"yellow"}

tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @a [{text:"  ",color:"gold"},{text:"MINING RUSH",color:"gold",bold:true}]
tellraw @a [{text:"  Break ores to score points!",color:"yellow"}]
tellraw @a [{text:"  +1 per ore block mined",color:"gray"}]
tellraw @a [{text:"  Duration: 5 minutes",color:"dark_gray"}]
tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
