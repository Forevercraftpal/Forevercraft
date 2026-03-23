# Harmonic Convergence: Veil of Embers
# Autumn + Waning Gibbous + Abyssal Tremor + DR >= 20.0

tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ HARMONIC CONVERGENCE ✦",color:"#FF6633",bold:true}]
tellraw @a [{text:"  "},{text:"— Veil of Embers —",color:"#FF9966"}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Autumnal fire meets the fury of the deep...",color:"#CC6633",italic:true}]
tellraw @a [{text:"  "},{text:"The earth trembles with hidden power.",color:"gray"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#FF6633"},{text:"All gathering yields doubled",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#FF6633"},{text:"Boss drops enhanced",color:"aqua"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#FF6633"},{text:"Convergence lore now discoverable",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  ✧ ",color:"#FF6633"},{text:"Dream Rate +2.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 10 minutes",color:"gray"}]
tellraw @a ""

# Deep rumbling + fire ambiance
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4 0.8
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.2 1.5
execute as @a at @s run playsound minecraft:block.lava.ambient master @s ~ ~ ~ 0.6 0.8

# Title
title @a times 10 100 30
title @a title [{text:"✦ Veil of Embers ✦",color:"#FF6633"}]
title @a subtitle [{text:"Harmonic Convergence",color:"#FF9966",italic:true}]
