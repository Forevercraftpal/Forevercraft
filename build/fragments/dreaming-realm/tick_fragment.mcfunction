# === DREAMING REALM: Crash/disconnect recovery ===
# If player reconnects while dream was active, clean up
execute as @a[tag=!ec.joined,scores={ec.dream_active=1..}] run function evercraft:dreaming_realm/exit/crash_recovery


# === DREAMING REALM ===
# Per-tick: timer, bossbar, fall catch, warnings (only when active — zero overhead otherwise)
execute if score #dr_active ec.var matches 1 run function evercraft:dreaming_realm/tick
# Handle /trigger ec.wake (emergency wake from Dreaming Realm)
execute as @a[tag=dr.in_realm,scores={ec.wake=1..}] run function evercraft:dreaming_realm/exit/wake_up
scoreboard players enable @a[scores={ec.wake=1..}] ec.wake
scoreboard players set @a[scores={ec.wake=1..}] ec.wake 0
