# Harmonic Convergence — Load
# Initialize convergence overlay state (preserves across reloads)
# Convergences: 1=Celestial Tide, 2=Veil of Embers, 3=Frozen Aurora, 4=Bloom of Eternity

# Core state
execute unless score #conv_active ec.var matches 0.. run scoreboard players set #conv_active ec.var 0
execute unless score #conv_id ec.var matches 0.. run scoreboard players set #conv_id ec.var 0
execute unless score #conv_timer ec.var matches 0.. run scoreboard players set #conv_timer ec.var 0
execute unless score #conv_flag ec.var matches 0.. run scoreboard players set #conv_flag ec.var 0

# FX counter (for sparkle spawning)
scoreboard players set #conv_fx ec.var 0

# Cooldown timestamp (gametime-based)
execute unless score #conv_cooldown_cd ec.var matches 0.. run scoreboard players set #conv_cooldown_cd ec.var 0

# Resume if convergence was active on reload
# Re-apply luck modifier (attributes may not survive crash/restart)
execute if score #conv_active ec.var matches 1 as @a run attribute @s luck modifier remove ec_convergence
execute if score #conv_active ec.var matches 1 as @a run attribute @s luck modifier add ec_convergence 2.0 add_value
execute if score #conv_active ec.var matches 1 run schedule function evercraft:convergence/tick 1s
