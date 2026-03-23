# Pharaoh's Fist — Apply Freeze to Entity
# Run as @s (enemy entity) — apply freeze effects + tag

# Freeze effects: Slowness 127 + Weakness 127 + Resistance V
effect give @s slowness 5 127 false
effect give @s weakness 5 127 false
effect give @s resistance 5 4 false

# Tag as frozen for tracking
tag @s add ec.sp_frozen

# Per-entity freeze VFX
execute at @s run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0.02 5
execute at @s run particle dust{color:[0.5,0.8,1.0],scale:1.2} ~ ~0.5 ~ 0.3 0.3 0.3 0.01 3
