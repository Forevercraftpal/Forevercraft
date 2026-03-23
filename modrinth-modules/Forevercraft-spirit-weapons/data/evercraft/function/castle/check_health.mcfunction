# Infinite Castle — Health Check (runs as each ic.player)
# Duel-style totem save: if health <= 6 HP (3 hearts), save from death
# Higher threshold catches damage spikes that could one-shot past 2 HP

# Skip if already fallen this tick
execute if entity @s[tag=ic.fallen] run return 0

# Get current health
execute store result score #ic_hp ec.var run data get entity @s Health 1

# If health <= 6, trigger totem save
execute if score #ic_hp ec.var matches ..6 run function evercraft:castle/totem_save
