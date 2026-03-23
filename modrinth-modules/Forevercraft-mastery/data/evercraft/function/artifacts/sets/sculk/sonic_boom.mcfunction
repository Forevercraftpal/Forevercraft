# Sculk - Sonic Boom Ability
# Unleash a devastating sonic wave like the Warden

# Sound (warden sonic boom)
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 1
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 0.5 1

# Particles - sonic wave effect
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
particle sculk_soul ~ ~1 ~ 1 0.5 1 0.05 30 force

# Damage enemies in a line (8 blocks forward)
execute anchored eyes positioned ^ ^ ^2 run function evercraft:artifacts/sets/sculk/sonic_hit
execute anchored eyes positioned ^ ^ ^4 run function evercraft:artifacts/sets/sculk/sonic_hit
execute anchored eyes positioned ^ ^ ^6 run function evercraft:artifacts/sets/sculk/sonic_hit
execute anchored eyes positioned ^ ^ ^8 run function evercraft:artifacts/sets/sculk/sonic_hit

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Sonic Boom!",color:"dark_aqua"}]
