# Dragonslayer Dragon's Flight - Launch into the air!
# Triggered by /trigger dragon_flight

# Check if has 4pc
execute unless entity @s[tag=dragonslayer_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Dragonslayer set for this ability!",color:"red"}]
execute unless entity @s[tag=dragonslayer_4pc] run return 0

# Launch the player upward with levitation and slow falling
effect give @s levitation 2 10 false
effect give @s slow_falling 10 0 false

# Effects
playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 0.5
particle minecraft:flame ~ ~ ~ 0.5 0.1 0.5 0.1 50
particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.1 0.3 0.05 20

tellraw @s [{text:"[Dragonslayer] ",color:"light_purple"},{text:"Dragon's Flight activated!",color:"gold"}]
