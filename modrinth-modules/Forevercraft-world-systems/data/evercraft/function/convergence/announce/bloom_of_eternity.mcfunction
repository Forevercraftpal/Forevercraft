# Harmonic Convergence: Bloom of Eternity
# Spring + Waxing Gibbous + Rift Echo + DR >= 25.0

tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ HARMONIC CONVERGENCE ✦",color:"#CC77FF",bold:true}]
tellraw @a [{text:"  "},{text:"— Bloom of Eternity —",color:"#DD99FF"}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Dimensional energy feeds the spring rebirth...",color:"#AA66DD",italic:true}]
tellraw @a [{text:"  "},{text:"Reality blooms at the seams between worlds.",color:"gray"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#CC77FF"},{text:"All gathering yields doubled",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#CC77FF"},{text:"Boss drops enhanced",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#CC77FF"},{text:"Convergence lore now discoverable",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#CC77FF"},{text:"Dream Rate +2.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 10 minutes",color:"gray"}]
tellraw @a ""

# Dimensional rift + nature sounds
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4 1.5
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
execute as @a at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.6 1.2
execute as @a at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.8 0.6

# Title
title @a times 10 100 30
title @a title [{text:"✦ Bloom of Eternity ✦",color:"#CC77FF"}]
title @a subtitle [{text:"Harmonic Convergence",color:"#DD99FF",italic:true}]
