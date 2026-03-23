# World Event Omen — Particle Effects (fires every 1s during last 30s)

# Starfall Convergence (1): end_rod stars brightening
execute if score #we_omen_id ec.var matches 1 as @a at @s run particle minecraft:end_rod ~ ~15 ~ 8 3 8 0.01 5

# Abyssal Tremor (3): dust + rumble from below
execute if score #we_omen_id ec.var matches 3 as @a at @s run particle minecraft:dust{color:[0.5,0.4,0.3],scale:1.2} ~ ~0.1 ~ 3 0.1 3 0 8
execute if score #we_omen_id ec.var matches 3 if score #we_omen_timer ec.var matches 1..15 as @a at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.2 0.6

# Aurora Bloom (4): rainbow particles near flowers
execute if score #we_omen_id ec.var matches 4 as @a at @s run particle minecraft:dust{color:[0.9,0.3,0.7],scale:0.8} ~ ~2 ~ 4 2 4 0 5
execute if score #we_omen_id ec.var matches 4 as @a at @s run particle minecraft:dust{color:[0.3,0.9,0.5],scale:0.8} ~ ~1.5 ~ 4 1 4 0 3

# Rift Echo (5): void particles + portal sounds
execute if score #we_omen_id ec.var matches 5 as @a at @s run particle minecraft:reverse_portal ~ ~2 ~ 3 2 3 0.2 10
execute if score #we_omen_id ec.var matches 5 if score #we_omen_timer ec.var matches 1..10 as @a at @s run playsound minecraft:block.portal.ambient master @s ~ ~ ~ 0.15 0.5
