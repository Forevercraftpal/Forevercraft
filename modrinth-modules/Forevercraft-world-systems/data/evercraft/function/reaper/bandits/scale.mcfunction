# Reaper — Scale Bandits by Player DR
# Run as peacemonger player (after spawning bandits)

# Read player DR (luck attribute x10)
execute store result score #rp_dr rp.temp run attribute @s luck get 10

# DR 0-14: base stats
execute if score #rp_dr rp.temp matches ..149 run return 0

# DR 15-24: +50% HP, +25% damage
execute if score #rp_dr rp.temp matches 150..249 as @e[tag=rp.bandit,tag=rp.spawned] run attribute @s max_health modifier add evercraft:reaper/dr_scale 0.5 add_multiplied_base
execute if score #rp_dr rp.temp matches 150..249 as @e[tag=rp.bandit,tag=rp.spawned] run attribute @s attack_damage modifier add evercraft:reaper/dr_scale 0.25 add_multiplied_base

# DR 25-34: +100% HP, +50% damage
execute if score #rp_dr rp.temp matches 250..349 as @e[tag=rp.bandit,tag=rp.spawned] run attribute @s max_health modifier add evercraft:reaper/dr_scale 1.0 add_multiplied_base
execute if score #rp_dr rp.temp matches 250..349 as @e[tag=rp.bandit,tag=rp.spawned] run attribute @s attack_damage modifier add evercraft:reaper/dr_scale 0.5 add_multiplied_base

# DR 35+: +200% HP, +100% damage
execute if score #rp_dr rp.temp matches 350.. as @e[tag=rp.bandit,tag=rp.spawned] run attribute @s max_health modifier add evercraft:reaper/dr_scale 2.0 add_multiplied_base
execute if score #rp_dr rp.temp matches 350.. as @e[tag=rp.bandit,tag=rp.spawned] run attribute @s attack_damage modifier add evercraft:reaper/dr_scale 1.0 add_multiplied_base

# Heal to max after scaling
execute as @e[tag=rp.bandit,tag=rp.spawned] run function evercraft:reaper/hunting_party/heal_to_max
