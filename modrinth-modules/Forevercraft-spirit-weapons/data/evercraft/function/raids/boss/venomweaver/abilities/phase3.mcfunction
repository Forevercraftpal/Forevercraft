# The Venomweaver — Phase 3: The Descent (33%-0% HP)
# - Massive AoE poison clouds every 200 ticks (10s)
# - Boss melee frenzy: fast attacks + web + poison combo
# - Antidote flowers on vine pillars (3 charges each, 9 total)
# - Faster poison spit (every 40 ticks)
# - Web traps every 80 ticks

# ── Poison Cloud (every 10 seconds) ──
execute if score #rd_vw_cloud_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/poison_cloud
execute if score #rd_vw_cloud_cd ec.var matches 0 run scoreboard players set #rd_vw_cloud_cd ec.var 200

# ── Poison Spit (frenzy: every 2 seconds) ──
execute if score #rd_vw_spit_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/poison_spit
execute if score #rd_vw_spit_cd ec.var matches 0 run scoreboard players set #rd_vw_spit_cd ec.var 40

# ── Web Trap (every 4 seconds) ──
execute if score #rd_vw_web_cd ec.var matches 0 run function evercraft:raids/boss/venomweaver/abilities/web_trap
execute if score #rd_vw_web_cd ec.var matches 0 run scoreboard players set #rd_vw_web_cd ec.var 80

# ── Antidote Flower Tick (check for clicks on vine pillars) ──
function evercraft:raids/boss/venomweaver/puzzle/antidote_tick

# ── Melee Poison Aura (players within 2 blocks take Poison II) ──
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run effect give @a[tag=ec.rd_participant,distance=..2] poison 3 1
