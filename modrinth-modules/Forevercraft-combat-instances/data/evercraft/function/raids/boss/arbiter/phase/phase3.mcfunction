# Arbiter — Phase 3: Final Verdict
# Boss stationary in center, tornado chases players
# Brief calm windows allow burst damage (3x vulnerability)

# ── Calm cycle timer (0-160 ticks = storm, 160-200 = calm) ──
scoreboard players add #rd_arb_calm ec.var 1
execute if score #rd_arb_calm ec.var matches 200.. run scoreboard players set #rd_arb_calm ec.var 0

# ── During calm (160-200): boss is vulnerable, tornado stops ──
execute if score #rd_arb_calm ec.var matches 160 run function evercraft:raids/boss/arbiter/abilities/start_calm
execute if score #rd_arb_calm ec.var matches 200 run function evercraft:raids/boss/arbiter/abilities/end_calm

# ── During storm: tornado chases players ──
execute if score #rd_arb_calm ec.var matches ..159 run function evercraft:raids/boss/arbiter/abilities/tornado_tick

# ── Wind blast continues during storm ──
execute if score #rd_arb_calm ec.var matches ..159 run scoreboard players add #rd_arb_blast_cd ec.var 1
execute if score #rd_arb_blast_cd ec.var matches 40.. if score #rd_arb_calm ec.var matches ..159 run function evercraft:raids/boss/arbiter/abilities/wind_blast
execute if score #rd_arb_blast_cd ec.var matches 40.. if score #rd_arb_calm ec.var matches ..159 run scoreboard players set #rd_arb_blast_cd ec.var 0
