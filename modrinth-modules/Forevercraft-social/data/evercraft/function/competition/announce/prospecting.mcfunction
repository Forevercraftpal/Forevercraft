# Competition Announce — Prospector's Race
bossbar set minecraft:competition name [{text:"Prospector's Race",color:"gold",bold:true},{text:" — Find rare ores!",color:"yellow"}]

title @a times 10 60 20
title @a title {text:"Prospector's Race!",color:"gold",bold:true}
title @a subtitle {text:"Mine ore nodes to score!",color:"yellow"}

tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
tellraw @a [{text:"  ",color:"gold"},{text:"PROSPECTOR'S RACE",color:"gold",bold:true}]
tellraw @a [{text:"  Mine ore nodes to earn points!",color:"yellow"}]
tellraw @a [{text:"  +1 per prospect completed",color:"gray"}]
tellraw @a [{text:"  Duration: 5 minutes",color:"dark_gray"}]
tellraw @a [{text:"",color:"dark_gray",strikethrough:true,extra:[{text:"                                        ",strikethrough:true}]}]
