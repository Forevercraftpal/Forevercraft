# Ender Dragon Blade — Dragon's Edge: Weakness I 3s on hit + dragon breath particles
# Run as the swinging player, anchored eyes
# ec.rg_target tag is set on hit targets by swing_t6

# Weakness I for 3s on hit targets
execute as @e[tag=ec.rg_target] run effect give @s weakness 3 0

# Dragon breath particles (subtle wisp)
execute positioned ^ ^ ^1.5 run particle dragon_breath ~ ~0.8 ~ 0.3 0.2 0.3 0.01 4

# Sound (quiet hiss)
playsound minecraft:entity.ender_dragon.growl player @a[distance=..16] ~ ~ ~ 0.08 2.0
