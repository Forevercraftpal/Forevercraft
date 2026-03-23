# Graviton Core - Apply all effects
# Runs for each player holding the artifact

# === ITEM MAGNET (8 blocks) ===
execute at @s run tp @e[type=item,distance=..8,nbt=!{PickupDelay:32767s}] @s

# === XP MAGNET (16 blocks) ===
execute at @s run tp @e[type=experience_orb,distance=..16] @s

# === GRAVITY WELL (slow nearby hostiles within 6 blocks) ===
# Duration 1 second (20 ticks) - longer than the 5-tick check interval so it overlaps properly
# Uses #evercraft:graviton_targets tag (all hostiles except warden)
execute at @s run effect give @e[type=#evercraft:graviton_targets,distance=..6] minecraft:slowness 1 1 true
# Warden gets Slowness I instead of II (too powerful to fully slow)
execute at @s run effect give @e[type=warden,distance=..6] minecraft:slowness 1 0 true

# === VOID PULL (deflect projectiles within 4 blocks) ===
# Only deflect projectiles that haven't been deflected yet (no gc_deflected tag)
execute at @s as @e[type=arrow,distance=..4,nbt={inGround:0b},tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=spectral_arrow,distance=..4,nbt={inGround:0b},tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=fireball,distance=..5,tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=small_fireball,distance=..4,tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=wither_skull,distance=..4,tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=shulker_bullet,distance=..4,tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=llama_spit,distance=..4,tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=wind_charge,distance=..4,tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile
execute at @s as @e[type=trident,distance=..4,nbt={DealtDamage:0b},tag=!gc_deflected] run function evercraft:artifacts/graviton_core/deflect_projectile

# Particle effect showing graviton field
execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 3
