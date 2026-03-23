# Harmonic Convergence: Frozen Aurora
# Winter + New Moon + Aurora Bloom + DR >= 15.0

tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ HARMONIC CONVERGENCE ✦",color:"#99FFCC",bold:true}]
tellraw @a [{text:"  "},{text:"— Frozen Aurora —",color:"#CCFFEE"}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Northern lights pierce the darkest winter night...",color:"#88DDAA",italic:true}]
tellraw @a [{text:"  "},{text:"The aurora dances where no moon dares shine.",color:"gray"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#99FFCC"},{text:"All gathering yields doubled",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#99FFCC"},{text:"Boss drops enhanced",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#99FFCC"},{text:"Convergence lore now discoverable",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#99FFCC"},{text:"Dream Rate +2.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 10 minutes",color:"gray"}]
tellraw @a ""

# Icy crystalline sounds
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4 2.0
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1.0 1.8
execute as @a at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 0.3 2.0

# Title
title @a times 10 100 30
title @a title [{text:"✦ Frozen Aurora ✦",color:"#99FFCC"}]
title @a subtitle [{text:"Harmonic Convergence",color:"#CCFFEE",italic:true}]
