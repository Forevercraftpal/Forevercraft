# ============================================================
# Artifact Bounty Board — 1s Tick
# Self-scheduling: retrofit entities, particles, click detection, cleanup
# ============================================================
schedule function evercraft:bounty_board/tick 1s replace

# Gate: skip if no players online
execute unless entity @a run return 0

# New player claim init: ensure scores exist (0 = unclaimed) so mid-day joins aren't locked out
# (must run before entity gate — new players need init even without bounty boards nearby)
execute as @a unless score @s ec.abb_claim_0 matches -2147483648..2147483647 run scoreboard players set @s ec.abb_claim_0 0
execute as @a unless score @s ec.abb_claim_1 matches -2147483648..2147483647 run scoreboard players set @s ec.abb_claim_1 0
execute as @a unless score @s ec.abb_claim_2 matches -2147483648..2147483647 run scoreboard players set @s ec.abb_claim_2 0

# Kill legacy ABB.Label text_displays (from before particle system, no longer used)
# OPT: Existence gate
execute if entity @e[type=text_display,tag=ABB.Label,limit=1] as @e[type=text_display,tag=ABB.Label] run kill @s

# OPT: Early exit if no bounty board entities exist (skip all entity work)
execute unless entity @e[type=marker,tag=ABB.Marker,limit=1] unless entity @e[type=armor_stand,tag=quests.board,limit=1] run return 0

# Retrofit: for each quest board with lectern lacking ABB marker, spawn entities
execute as @e[type=armor_stand,tag=quests.board] at @s if block ~ ~ ~ minecraft:lectern unless entity @e[type=marker,tag=ABB.Marker,distance=..1] run function evercraft:bounty_board/spawn_entities

# Particle effect: gold dust above quest boards with bounty board
execute as @e[type=interaction,tag=ABB.Click] at @s run particle minecraft:dust{color:[1.0,0.84,0.0],scale:0.7} ~ ~0.2 ~ 0.2 0.15 0.2 0 3

# Click detection: process any clicked ABB interaction entities
execute as @e[type=interaction,tag=ABB.Click] if data entity @s interaction at @s run function evercraft:bounty_board/on_click

# Cleanup: if lectern block is gone, kill all ABB entities (BM on_barrel_broken pattern)
execute as @e[type=marker,tag=ABB.Marker] at @s if entity @a[distance=..8] unless block ~ ~ ~ minecraft:lectern run function evercraft:bounty_board/cleanup_at_board

# Orphan cleanup: ABB entities without a nearby marker (edge case safety net)
execute if entity @e[type=text_display,tag=ABB.QBLabel,limit=1] as @e[type=text_display,tag=ABB.QBLabel] at @s unless entity @e[type=marker,tag=ABB.Marker,distance=..3] run kill @s
execute if entity @e[type=interaction,tag=ABB.Click,limit=1] as @e[type=interaction,tag=ABB.Click] at @s unless entity @e[type=marker,tag=ABB.Marker,distance=..3] run kill @s
