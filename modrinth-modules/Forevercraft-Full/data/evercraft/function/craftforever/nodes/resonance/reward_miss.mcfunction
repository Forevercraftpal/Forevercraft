# Resonance Strike — MISS (outside zone)
# Run as player

tellraw @s [{text:"[Craftforever] ",color:"#8BC34A"},{text:"Missed the resonance... no bonus this time.",color:"gray",italic:true}]
title @s actionbar [{text:"Missed...",color:"gray",italic:true}]

# No penalty — normal loot already awarded
playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 0.5 0.5
