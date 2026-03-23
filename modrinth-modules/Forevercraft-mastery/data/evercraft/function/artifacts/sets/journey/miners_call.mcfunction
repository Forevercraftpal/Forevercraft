# Miner's Call ability - reveals nearby treasures
# Apply night vision and glow nearby items
effect give @s night_vision 30 0 false
execute at @s run effect give @e[type=item,distance=..32] glowing 30 0 false
execute at @s run effect give @e[type=experience_orb,distance=..32] glowing 30 0 false
# Particles
execute at @s run particle dust{color:[1.0,0.8,0.2],scale:1.0} ~ ~1 ~ 2 1 2 0.1 50
execute at @s run playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 1 0.8
tellraw @s {text:"The Miner's Call reveals hidden treasures!",color:"gold",italic:true}
