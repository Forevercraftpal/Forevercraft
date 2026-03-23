# Party System — 1s Tick Schedule
# Handles: proximity detection, buff application, combo checks, cooldowns, leader timeout

schedule function evercraft:party/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# === CORE PARTY MEMBER TICK ===
# OPT: Consolidates 6 @a[scores={ec.party_id=1..}] scans into 1
# Handles: proximity, buffs, combos, cooldowns, sidebar update
execute if entity @a[scores={ec.party_id=1..}] run scoreboard players reset * ec.party_hp
execute as @a[scores={ec.party_id=1..}] at @s run function evercraft:party/member_tick

# === SNEAK INVITE (sneak + empty hand + look at player to invite) ===
# Only runs when a party leader is actively sneaking with empty hand and off cooldown
execute as @a[scores={ec.party_role=1,ec.party_size=..3},predicate=evercraft:is_sneaking] unless data entity @s SelectedItem unless score @s ec.party_inv_cd matches 1.. at @s anchored eyes positioned ^ ^ ^0.5 run function evercraft:party/invite/sneak_init

# === PING MARKER CLEANUP ===
# Emit beacon particles from active ping markers, kill expired ones
execute store result score #now ec.temp run time query gametime
execute as @e[type=marker,tag=ec.party_ping] at @s if score #now ec.temp >= @s ec.temp run kill @s
execute as @e[type=marker,tag=ec.party_ping] at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 1 0.3 0.02 5 force

# === INVITE TIMEOUT ===
# Cancel expired invites (cooldown decrement moved to tick_cooldowns)
execute as @a[scores={ec.party_inv=1,ec.party_inv_cd=..0}] run function evercraft:party/invite/timeout

# === LEADER DISCONNECT DETECTION ===
execute as @a[scores={ec.party_role=1}] run scoreboard players set @s ec.party_ldr_dc 0
function evercraft:party/check_leader

# === OFFLINE MEMBER DETECTION (10 min timeout) ===
function evercraft:party/check_offline

# === PARTY TRIGGER HANDLER ===
# 1 = open menu, 2 = create party, 3 = invite nearby, 4 = disband
# 5 = ping, 6 = leave, 10+ = accept invite from party ID
execute as @a[scores={ec.party=1}] at @s run function evercraft:party/menu/open
execute as @a[scores={ec.party=2}] at @s run function evercraft:party/menu/create
execute as @a[scores={ec.party=3}] at @s run function evercraft:party/invite/scan
execute as @a[scores={ec.party=4}] run function evercraft:party/menu/disband
execute as @a[scores={ec.party=5}] at @s run function evercraft:party/ping
execute as @a[scores={ec.party=6}] run function evercraft:party/menu/leave
# Accept invite: trigger value 10+ = accepting invite from party ID (value - 10)
execute as @a[scores={ec.party=10..}] run function evercraft:party/invite/accept
# Reset trigger and re-enable for players who used it
# OPT: enable @s instead of @a — load + on_join handle first-time/reconnect
execute as @a[scores={ec.party=1..}] run scoreboard players enable @s ec.party
scoreboard players set @a[scores={ec.party=1..}] ec.party 0
# Also handle decline (negative values)
execute as @a[scores={ec.party=..-1}] run scoreboard players enable @s ec.party
execute as @a[scores={ec.party=..-1}] run function evercraft:party/invite/decline
scoreboard players set @a[scores={ec.party=..-1}] ec.party 0

# === CLEANUP (no per-tick setdisplay needed — display slots set permanently in load) ===
execute unless entity @a[scores={ec.party_id=1..}] run function evercraft:party/sidebar/hide_sidebar
