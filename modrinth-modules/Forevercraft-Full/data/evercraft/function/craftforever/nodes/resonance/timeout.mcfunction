# Resonance Strike — Timeout (5 seconds elapsed with no click)
# Run as player

tellraw @s [{text:"[Craftforever] ",color:"#8BC34A"},{text:"The resonance faded...",color:"gray",italic:true}]
title @s actionbar [{text:"Resonance faded...",color:"dark_gray",italic:true}]

playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 0.4 0.4

# Cleanup
function evercraft:craftforever/nodes/resonance/cleanup
