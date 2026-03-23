# === CRAFTFOREVER MAIN TICK ===
# Called from evercraft:tick, existence-gated

# ═══ ARTISAN FORGE TABLE ═══

# Forge Table interaction detection
execute if entity @e[type=interaction,tag=CF.Interact,limit=1] as @e[type=interaction,tag=CF.Interact] if data entity @s interaction at @s run function evercraft:craftforever/forging/on_interact

# Forge Table break detection (lodestone removed)
# OPT: Existence gate — skip when no Forge Table markers exist
execute if entity @e[type=marker,tag=CF.Marker,limit=1] as @e[type=marker,tag=CF.Marker] at @s unless block ~ ~ ~ minecraft:lodestone run function evercraft:craftforever/forging/on_break

# Forge Table ambient particles
execute if score #daylight_counter ec.var matches 0 as @e[type=marker,tag=CF.Marker] at @s if entity @a[distance=..32] run particle minecraft:flame ~0 ~1.3 ~0 0.15 0.1 0.15 0.01 3

# Forge GUI orphan cleanup (every 5s watchdog cycle)
# Kill forge menu entities if no CF.InMenu player exists nearby
execute if score #watchdog ec.var matches 99 if entity @e[type=text_display,tag=CF.MenuEl,limit=1] unless entity @a[tag=CF.InMenu] as @e[type=text_display,tag=CF.MenuEl] run kill @s
execute if score #watchdog ec.var matches 99 if entity @e[type=item_display,tag=CF.MenuEl,limit=1] unless entity @a[tag=CF.InMenu] as @e[type=item_display,tag=CF.MenuEl] run kill @s
execute if score #watchdog ec.var matches 99 if entity @e[type=interaction,tag=CF.MenuEl,limit=1] unless entity @a[tag=CF.InMenu] as @e[type=interaction,tag=CF.MenuEl] run kill @s

# ═══ TRIAL MASTERY PARTICLES (every 20 ticks) ═══
execute if score #daylight_counter ec.var matches 0 as @a[scores={ec.tt_mastery=1..}] at @s run function evercraft:craftforever/trials/mastery_particles

# ═══ DAILY CHALLENGE ROLL — moved to luck_buffs/tick.mcfunction dawn block ═══
# (Now unified with dungeon daily challenge via personal_roll)

# ═══ CRAFTFOREVER CODEX ORPHAN CLEANUP ═══
# Every 5s (watchdog cycle): kill codex menu entities with no nearby owner
# OPT: Only check when codex anchors exist AND no codex players exist
execute if score #watchdog ec.var matches 99 if entity @e[type=marker,tag=CF.MenuAnchor,limit=1] unless entity @a[tag=CF.InCodex] as @e[type=marker,tag=CF.MenuAnchor] at @s run kill @e[tag=CF.MenuElement,distance=..5]
