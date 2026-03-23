# Accessory Toggle — Sneak + Mainhand Detection
# Runs every 1s from tick.mcfunction
# Detects when a player sneaks while holding a toggleable accessory in mainhand

# Decrement toggle cooldown
scoreboard players remove @a[scores={ec.t_cooldown=1..}] ec.t_cooldown 1

# Reset sneak timer for anyone NOT sneaking
execute as @a[predicate=!evercraft:sneaking] run scoreboard players set @s ec.t_sneak 0

# Tag sneaking players holding any toggleable accessory in mainhand
# OPT: Single @a selector dispatch → per-player item checks (was 20 separate @a scans)
tag @a remove ec.t_holding

# Gate: skip item checks + toggle logic if nobody is sneaking with no cooldown
execute unless entity @a[predicate=evercraft:sneaking,scores={ec.t_cooldown=0}] run return 0

execute as @a[predicate=evercraft:sneaking,scores={ec.t_cooldown=0}] run function evercraft:artifacts/accessories/toggle_check_items

# Increment timer for tagged players, reset for sneaking players not holding toggleable
execute as @a[tag=ec.t_holding] run scoreboard players add @s ec.t_sneak 1
execute as @a[predicate=evercraft:sneaking,tag=!ec.t_holding] run scoreboard players set @s ec.t_sneak 0

# Fire toggle for players who reached threshold (1 second)
execute as @a[tag=ec.t_holding,scores={ec.t_sneak=1..}] run function evercraft:artifacts/accessories/toggle_apply

# Clean up tags
tag @a remove ec.t_holding
