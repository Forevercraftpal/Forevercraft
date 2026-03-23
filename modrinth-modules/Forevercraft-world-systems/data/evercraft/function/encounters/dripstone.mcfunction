# Underground Biome Encounters — Dripstone Caves: Crystalline Tremor
# Run as/at player every 10s during encounter
# Replenish cave_spiders; silverfish spawn on kill (via advancement)

# Replenish cave spiders if below 4 alive within 32 blocks
execute store result score #ube_count ec.var if entity @e[type=cave_spider,tag=ube.tremor_mob,distance=..32]
execute if score #ube_count ec.var matches ..3 run summon cave_spider ^ ^ ^4 {Tags:["ube.tremor_mob"],PersistenceRequired:1b}

# Ambient effects
particle dripping_dripstone_lava ~ ~3 ~ 6 3 6 0.01 10
playsound minecraft:block.pointed_dripstone.drip_lava player @s ~ ~ ~ 0.6 0.7
playsound minecraft:block.stone.break player @s ~ ~ ~ 0.3 0.5
