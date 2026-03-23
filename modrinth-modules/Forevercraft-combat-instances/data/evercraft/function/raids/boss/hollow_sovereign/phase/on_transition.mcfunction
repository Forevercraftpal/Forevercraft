# Hollow Sovereign — Phase Transition Handler
# Called when phase advances. Current #rd_boss_phase already incremented.

# ══════════════════════════════════════════
# Phase 2 Setup — The Sculk Tendrils
# ══════════════════════════════════════════
execute if score #rd_boss_phase ec.var matches 2 run function evercraft:raids/boss/hollow_sovereign/phase/setup_phase2

# ══════════════════════════════════════════
# Phase 3 Setup — The Three Shadows
# ══════════════════════════════════════════
execute if score #rd_boss_phase ec.var matches 3 run function evercraft:raids/boss/hollow_sovereign/phase/setup_phase3
