# The Venomweaver — Phase Transition Handler
# Called when boss HP crosses a phase threshold

# ── Phase 2 Setup: The Brood ──
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/venomweaver/phase/enter_phase2

# ── Phase 3 Setup: The Descent ──
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/venomweaver/phase/enter_phase3
