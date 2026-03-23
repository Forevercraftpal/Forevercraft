# Codex of Everything — Spectator Mode Activation
# Right-click activates spectator for 30s with 7-day cooldown (504000 ticks)

# Reset advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/codex_spectator/use_trigger

# If sneaking, show dimension menu instead (handled by tick.mcfunction)
execute if predicate evercraft:sneaking run return 0

# Check cooldown (7 days = 504000 ticks with 72000-tick day cycle)
execute if score @s ec.codex_spec_cd matches 1.. run function evercraft:artifacts/codex_spectator/on_cooldown
execute if score @s ec.codex_spec_cd matches 1.. run return 0

# Activate spectator mode
function evercraft:artifacts/codex_spectator/activate
