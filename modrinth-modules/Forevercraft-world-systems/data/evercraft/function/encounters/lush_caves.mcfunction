# Underground Biome Encounters — Lush Caves: Bloom Surge
# Run as/at player every 10s during encounter
# All nearby mobs become poisonous; replenish encounter mobs

# Poison ALL hostile mobs within 16 blocks (everything becomes venomous)
execute as @e[type=#evercraft:combat_targets,distance=..16] run effect give @s poison 15 0 false

# Replenish encounter mobs if any were killed (maintain 4)
execute store result score #ube_count ec.var if entity @e[type=#evercraft:combat_targets,tag=ube.enc_mob,distance=..32]
execute if score #ube_count ec.var matches ..2 run summon zombie ^ ^ ^4 {Tags:["ube.enc_mob"],active_effects:[{id:"minecraft:poison",duration:99999,amplifier:0,show_particles:0b}],PersistenceRequired:1b}
execute if score #ube_count ec.var matches ..1 run summon spider ^3 ^ ^3 {Tags:["ube.enc_mob"],active_effects:[{id:"minecraft:poison",duration:99999,amplifier:0,show_particles:0b}],PersistenceRequired:1b}

# Ambient effects
particle spore_blossom_air ~ ~1 ~ 8 4 8 0.01 30
playsound minecraft:block.azalea_leaves.place player @s ~ ~ ~ 0.4 0.8
