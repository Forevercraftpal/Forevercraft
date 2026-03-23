# Reaper — Mob Pacification (Villain, infamy >= 3000)
# Non-undead hostile mobs within 32 blocks ignore the villain
# Run as villain player at player

# Apply follow_range modifier to nearby non-undead hostiles
# Setting follow_range to near-zero prevents them from detecting the player
# Each mob type needs its own execute line (no entity type tag for "non-undead hostile")

# Creepers
execute as @e[type=creeper,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=creeper,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total

# Spiders
execute as @e[type=spider,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=spider,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total
execute as @e[type=cave_spider,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=cave_spider,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total

# Illagers (they respect villain's authority)
execute as @e[type=pillager,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=pillager,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total
execute as @e[type=vindicator,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=vindicator,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total
execute as @e[type=evoker,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=evoker,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total
execute as @e[type=witch,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=witch,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total

# Slimes / Magma Cubes (mindless but not undead)
execute as @e[type=slime,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=slime,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total
execute as @e[type=magma_cube,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=magma_cube,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total

# Hoglin / Piglin Brute
execute as @e[type=hoglin,distance=..32] run attribute @s follow_range modifier remove evercraft:reaper/pacify
execute as @e[type=hoglin,distance=..32] run attribute @s follow_range modifier add evercraft:reaper/pacify -0.99 add_multiplied_total

# NOTE: Undead STILL attack (zombie, skeleton, drowned, phantom, wither_skeleton, husk, stray, etc.)
# NOTE: Wardens and Endermen are also NOT pacified
# NOTE: Hunting party mobs (tagged rp.hunter) are excluded because they have PersistenceRequired
