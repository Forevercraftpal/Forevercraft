# The Ashen Lord — Phase Transition Handler
# Called when boss HP crosses a phase threshold
# Current phase has ALREADY been incremented by phase_transition.mcfunction

# ── Phase 2 Setup: Soul Fire Floor ──
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/ashen_lord/phase/enter_phase2

# ── Phase 3 Setup: The Inferno ──
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/ashen_lord/phase/enter_phase3
