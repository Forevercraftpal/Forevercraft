# Rogue Auto-Swing — Shared Visual Effects
# Run as target entity at target entity position
# Called from swing_t* functions after damage is applied

# Sweep attack particle at target
particle sweep_attack ~ ~0.8 ~ 0.3 0.2 0.3 0 2

# Critical hit sparkles
particle crit ~ ~1.0 ~ 0.2 0.3 0.2 0.05 3

# Damage indicator particles
particle damage_indicator ~ ~0.8 ~ 0.2 0.2 0.2 0.1 2
