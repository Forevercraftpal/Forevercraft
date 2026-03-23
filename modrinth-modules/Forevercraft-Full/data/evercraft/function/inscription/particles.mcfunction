# ============================================================
# Inscription Stones — Particle Display
# Run as marker entity, at stone position. Gentle pillar of particles.
# ============================================================

# Original zone types
execute if entity @s[tag=ec.inscr_frostbite] run particle snowflake ~ ~0.5 ~ 0.3 0.5 0.3 0.01 3
execute if entity @s[tag=ec.inscr_life_steal] run particle heart ~ ~0.5 ~ 0.3 0.5 0.3 0 2
execute if entity @s[tag=ec.inscr_gold_greed] run particle enchant ~ ~0.5 ~ 0.3 0.8 0.3 0.5 5
execute if entity @s[tag=ec.inscr_absorption] run particle happy_villager ~ ~0.5 ~ 0.3 0.5 0.3 0 3
execute if entity @s[tag=ec.inscr_guardian] run particle ash ~ ~0.5 ~ 0.3 0.5 0.3 0 4
execute if entity @s[tag=ec.inscr_thornmail] run particle composter ~ ~0.5 ~ 0.3 0.5 0.3 0 3
execute if entity @s[tag=ec.inscr_force] run particle flame ~ ~0.5 ~ 0.2 0.4 0.2 0.005 2
execute if entity @s[tag=ec.inscr_growth] run particle happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0 4

# New zone types
execute if entity @s[tag=ec.inscr_haste] run particle crit ~ ~0.5 ~ 0.3 0.5 0.3 0.02 3
execute if entity @s[tag=ec.inscr_wind] run particle cloud ~ ~0.5 ~ 0.3 0.5 0.3 0.01 3
execute if entity @s[tag=ec.inscr_fortify] run particle angry_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 1
execute if entity @s[tag=ec.inscr_reveal] run particle end_rod ~ ~0.5 ~ 0.3 0.5 0.3 0.01 3
execute if entity @s[tag=ec.inscr_wild_magic] run particle witch ~ ~0.5 ~ 0.3 0.5 0.3 0.02 4
