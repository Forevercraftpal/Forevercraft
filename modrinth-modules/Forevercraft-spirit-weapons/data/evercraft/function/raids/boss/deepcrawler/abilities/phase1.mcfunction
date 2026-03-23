# The Deepcrawler — Phase 1: The Burrower (100%-66% HP)
# - Boss burrows through walls, emerges from random positions
# - Above ground for 160 ticks (8s), then burrows for 100 ticks (5s)
# - Stalactite drops every 300 ticks (15s)

# ── Burrow Cycle ──
# Boss above ground: #rd_dc_above = 1, boss visible and attacking
# Boss burrowed: #rd_dc_above = 0, boss invisible, countdown to emerge

# When above ground — countdown to burrow
execute if score #rd_dc_above ec.var matches 1 if score #rd_dc_burrow_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/burrow_enter
execute if score #rd_dc_above ec.var matches 1 if score #rd_dc_burrow_cd ec.var matches 0 run scoreboard players set #rd_dc_burrow_cd ec.var 100

# When burrowed — countdown to emerge
execute if score #rd_dc_above ec.var matches 0 if score #rd_dc_burrow_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/burrow_emerge
execute if score #rd_dc_above ec.var matches 0 if score #rd_dc_burrow_cd ec.var matches 0 run scoreboard players set #rd_dc_burrow_cd ec.var 160

# ── Stalactite Drops (every 15 seconds) ──
execute if score #rd_dc_stala_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/stalactite_drop
execute if score #rd_dc_stala_cd ec.var matches 0 run scoreboard players set #rd_dc_stala_cd ec.var 300

# ── Speed boost while above ground ──
execute if score #rd_dc_above ec.var matches 1 as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect give @s speed 2 1 true
