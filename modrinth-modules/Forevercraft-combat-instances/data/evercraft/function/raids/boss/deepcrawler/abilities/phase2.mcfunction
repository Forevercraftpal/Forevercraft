# The Deepcrawler — Phase 2: The Rail Storm (66%-33% HP)
# - Minecart attacks from 4 directions (every 200 ticks / 10s)
# - Cave spider swarms (every 300 ticks / 15s)
# - Boss stays above ground more (burrow time halved)
# - Stalactites continue (every 200 ticks)

# ── Minecart Rail Attack (every 10 seconds) ──
execute if score #rd_dc_cart_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/cart_launch
execute if score #rd_dc_cart_cd ec.var matches 0 run scoreboard players set #rd_dc_cart_cd ec.var 200

# ── Burrow Cycle (faster: 120 ticks above, 60 ticks below) ──
execute if score #rd_dc_above ec.var matches 1 if score #rd_dc_burrow_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/burrow_enter
execute if score #rd_dc_above ec.var matches 1 if score #rd_dc_burrow_cd ec.var matches 0 run scoreboard players set #rd_dc_burrow_cd ec.var 60
execute if score #rd_dc_above ec.var matches 0 if score #rd_dc_burrow_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/burrow_emerge
execute if score #rd_dc_above ec.var matches 0 if score #rd_dc_burrow_cd ec.var matches 0 run scoreboard players set #rd_dc_burrow_cd ec.var 120

# ── Spider Swarms (every 15 seconds) ──
execute if score #rd_dc_stala_cd ec.var matches 0 run function evercraft:raids/boss/deepcrawler/abilities/spawn_spiders
execute if score #rd_dc_stala_cd ec.var matches 0 run scoreboard players set #rd_dc_stala_cd ec.var 300

# ── Speed boost while above ──
execute if score #rd_dc_above ec.var matches 1 as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect give @s speed 2 1 true
