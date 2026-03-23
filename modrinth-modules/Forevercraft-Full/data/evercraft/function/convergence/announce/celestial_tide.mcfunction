# Harmonic Convergence: Celestial Tide
# Summer + Full Moon + Starfall + DR >= 15.0

tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ HARMONIC CONVERGENCE ✦",color:"#66CCFF",bold:true}]
tellraw @a [{text:"  "},{text:"— Celestial Tide —",color:"#AADDFF"}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The stars align over summer seas...",color:"#88CCEE",italic:true}]
tellraw @a [{text:"  "},{text:"The heavens pour their light upon the world.",color:"gray"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#66CCFF"},{text:"All gathering yields doubled",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#66CCFF"},{text:"Boss drops enhanced",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#66CCFF"},{text:"Convergence lore now discoverable",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#66CCFF"},{text:"Dream Rate +2.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 10 minutes",color:"gray"}]
tellraw @a ""

# Celestial sound cascade
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4 2.0
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
execute as @a at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1.0 0.5
execute as @a at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.8 1.2

# Title
title @a times 10 100 30
title @a title [{text:"✦ Celestial Tide ✦",color:"#66CCFF"}]
title @a subtitle [{text:"Harmonic Convergence",color:"#AADDFF",italic:true}]
