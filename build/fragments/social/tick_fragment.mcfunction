# === DUEL SYSTEM: Crash/disconnect recovery ===
execute as @a[tag=!ec.joined,scores={ec.duel_active=1..}] run function evercraft:duel/crash_recovery


# === PET DUEL: Disconnect recovery ===
execute if score #pd_active ec.var matches 1 as @a[tag=pd.duelist,tag=!ec.joined] run function evercraft:pet_duel/resolve_draw


# === DUEL: Intercept death before tomb ===
execute if score #duel_active ec.var matches 1.. as @a[tag=ec.duel_active_tag,scores={ec.tomb_death=1..}] run function evercraft:duel/active/on_death


# === CHALLENGE SYSTEM (Book-Based: Codex→Duel, Craftforever→Competition, Catalogue→Pet Duel) ===
# OPT: Throttled to every 5 ticks (250ms) — predicate checks per sneaker are expensive per-tick
scoreboard players add #duel_ray_cd ec.var 1
execute if score #duel_ray_cd ec.var matches 5.. run scoreboard players set #duel_ray_cd ec.var 0
# Pre-filter to sneaking, non-dueling players; check_and_raycast determines book type + routes
execute if score #duel_ray_cd ec.var matches 0 as @a[predicate=evercraft:is_sneaking,tag=!ec.duel_active_tag] at @s run function evercraft:challenge/check_and_raycast

# === DUEL SYSTEM ===
# Trigger handler (accept/decline/spectate)
execute as @a[scores={ec.duel=1..}] run function evercraft:duel/trigger_handler
execute as @a[scores={ec.duel=..-1}] run function evercraft:duel/trigger_handler
# Invite expiry — must run independently of active duel state
scoreboard players remove @a[scores={ec.duel_inv_cd=1..}] ec.duel_inv_cd 1
execute as @a[tag=duel.pending_target,scores={ec.duel_inv_cd=0}] run function evercraft:duel/invite/timeout
# Team duel partner_b confirmation timeout (30s timer set in receive_accept)
execute as @a[tag=duel.partner_b,scores={ec.duel_inv_cd=..0}] unless score #duel_active ec.var matches 1 run function evercraft:duel/team/partner_timeout
# Active duel tick (boundary check, health monitoring, disconnect detection)
execute if score #duel_active ec.var matches 1 run function evercraft:duel/active/tick


# === H2H COMPETITION SYSTEM ===
# Trigger handler (accept type 1-6, decline -1)
execute as @a[scores={ec.h2h=1..}] run function evercraft:competition/h2h/trigger_handler
execute as @a[scores={ec.h2h=..-1}] run function evercraft:competition/h2h/trigger_handler
# Invite expiry
scoreboard players remove @a[scores={ec.h2h_inv_cd=1..}] ec.h2h_inv_cd 1
execute as @a[tag=h2h.pending_target,scores={ec.h2h_inv_cd=0}] run function evercraft:competition/h2h/timeout


# === PET DUEL SYSTEM ===
# Trigger handler (accept/decline)
execute as @a[scores={ec.pd=1..}] run function evercraft:pet_duel/trigger_handler
# Invite expiry
scoreboard players remove @a[scores={ec.pd_inv_cd=1..}] ec.pd_inv_cd 1
execute as @a[tag=pd.pending_target,scores={ec.pd_inv_cd=0}] run function evercraft:pet_duel/invite_timeout
# Pet duel cooldown decrement (per tick)
scoreboard players remove @a[scores={ec.pd_cd=1..}] ec.pd_cd 1
