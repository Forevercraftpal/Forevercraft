# === HEIST SYSTEM: Crash/disconnect recovery ===
execute as @a[tag=!ec.joined,scores={ec.heist_active=1..}] run function evercraft:heist/crash_recovery


# === HEIST: Intercept death before tomb ===
execute if score #heist_active ec.var matches 1 as @a[tag=ec.heist_active_tag,scores={ec.tomb_death=1..}] run function evercraft:heist/active/on_fail
execute if score #heist_active ec.var matches 1 run scoreboard players set @a[tag=ec.heist_active_tag] ec.tomb_death 0


# === BLACK MARKET HEIST SYSTEM ===
# Active heist tick (health monitoring, hit detection, timer, completion)
execute if score #heist_active ec.var matches 1 run function evercraft:heist/active/tick
# Heist trigger handler
execute as @a[scores={ec.heist=1..}] run function evercraft:heist/initiate
scoreboard players enable @a[scores={ec.heist=1..}] ec.heist
scoreboard players set @a[scores={ec.heist=1..}] ec.heist 0
