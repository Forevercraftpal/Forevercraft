# Mythical Spider Tick
# Run every 20t (1s) via schedule
# Abilities scale with tier: t1 (ornate/exquisite), t2 (mythical 1-3), t3 (mythical 4+)

schedule function evercraft:mobs/mythical_scaling/spider_tick 20t

# Skip if no mythical spiders exist
execute unless entity @e[tag=mythical_spider_t1,limit=1] unless entity @e[tag=mythical_spider_t2,limit=1] unless entity @e[tag=mythical_spider_t3,limit=1] run return 0

# --- Re-tier spiders near players whose gear changed ---
# Every 20t, re-evaluate tier for loaded spiders near players with artifact gear
# Clear old tags and re-apply based on current nearest geared player
execute as @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t1] at @s unless entity @p[tag=ec.gear_target,distance=..64] run tag @s remove mythical_spider_t1
execute as @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t2] at @s unless entity @p[tag=ec.gear_target,distance=..64] run tag @s remove mythical_spider_t2
execute as @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t3] at @s unless entity @p[tag=ec.gear_target,distance=..64] run tag @s remove mythical_spider_t3

# === TIER 1 (Ornate/Exquisite): Poison I 3s, 10% Wither I 3s, 5% web ===
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t1,distance=..3] run effect give @s poison 3 0
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t1,distance=..3] if predicate {"condition":"minecraft:random_chance","chance":0.1} run effect give @s wither 3 0
execute as @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t1] at @s if entity @a[distance=..8] if predicate {"condition":"minecraft:random_chance","chance":0.05} run function evercraft:mobs/mythical_scaling/spider_web

# === TIER 2 (Mythical 1-3): Poison II 5s, 20% Wither I 4s, 10% web ===
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t2,distance=..3] run effect give @s poison 5 1
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t2,distance=..3] if predicate {"condition":"minecraft:random_chance","chance":0.2} run effect give @s wither 4 0
execute as @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t2] at @s if entity @a[distance=..8] if predicate {"condition":"minecraft:random_chance","chance":0.1} run function evercraft:mobs/mythical_scaling/spider_web

# === TIER 3 (Mythical 4+): Poison III 7s, 30% Wither II 5s, 15% web ===
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t3,distance=..3] run effect give @s poison 7 2
execute as @a[nbt={HurtTime:10s}] at @s if entity @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t3,distance=..3] if predicate {"condition":"minecraft:random_chance","chance":0.3} run effect give @s wither 5 1
execute as @e[type=#evercraft:mobs/mythical_scaling/spiders,tag=mythical_spider_t3] at @s if entity @a[distance=..8] if predicate {"condition":"minecraft:random_chance","chance":0.15} run function evercraft:mobs/mythical_scaling/spider_web
