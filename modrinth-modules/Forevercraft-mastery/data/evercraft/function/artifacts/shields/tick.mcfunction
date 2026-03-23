# Shield Tank System — Tick (1s self-schedule)
# Grants Resistance when holding a tank shield in mainhand
# Manages taunt pulls, taunt expiry, and ability cooldowns

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:artifacts/shields/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# Lightning strike cooldown (weapon ability, not shield-specific — must tick for all players)
scoreboard players remove @a[scores={ec.lightning_cd=1..}] ec.lightning_cd 1

# OPT: Bulk cooldown decrements (moved out of per-player function for non-shield holders)
scoreboard players remove @a[scores={ec.shield_cd=1..}] ec.shield_cd 1
scoreboard players remove @a[scores={ec.tk_use_cd=1..}] ec.tk_use_cd 1
scoreboard players remove @a[scores={ec.tk_bash_cd=1..}] ec.tk_bash_cd 1
scoreboard players remove @a[scores={ec.tk_off_cd=1..}] ec.tk_off_cd 1
scoreboard players remove @a[scores={ec.tk_pull_cd=1..}] ec.tk_pull_cd 1

# Check for expired taunts and remove them
function evercraft:artifacts/shields/taunt/check_expiry

# OPT: Only process per-player shield logic for actual shield holders (was @a)
execute as @a if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] run function evercraft:artifacts/shields/player_tick
