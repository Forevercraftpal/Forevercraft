# Accessory Artifacts — Tick (1s self-scheduling)
# OPT: All per-accessory checks moved to player_tick, reducing ~250 @a scans to 1

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:artifacts/accessories/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# === TOGGLE DETECTION (F8) ===
function evercraft:artifacts/accessories/toggle_check

# === TOGGLE-OFF: Remove luck attribute modifiers when disabled ===
# OPT: 7 @a scans → 1 per-player function call (only runs for players with any toggle active)
execute as @a[tag=ec.has_accessory] run function evercraft:artifacts/accessories/remove_toggled_luck

# === PER-PLAYER PROCESSING (all accessory checks + cleanup + worn abilities + satchels) ===
# OPT: worn_tick_player merged into player_tick — single @a scan handles everything
execute as @a at @s run function evercraft:artifacts/accessories/player_tick

# === SATCHEL DREAM RATE: Re-apply satchel artifact modifiers AFTER cleanup ===
# Cleanup removes luck modifiers for artifacts not in inventory, but satchel-stored
# artifacts aren't in inventory. Apply satchel effects here so they always survive cleanup.
# OPT: 6 @a scans → 1 per-player function call
execute as @a run function evercraft:satchel/check_and_apply

# === COOLDOWN DECREMENTS ===
scoreboard players remove @a[scores={ec.monocle_cd=1..}] ec.monocle_cd 1
scoreboard players remove @a[scores={ec.seers_cd=1..}] ec.seers_cd 1
scoreboard players remove @a[scores={ec.wecho_cd=1..}] ec.wecho_cd 1
scoreboard players remove @a[scores={ec.ceye_cd=1..}] ec.ceye_cd 1
scoreboard players remove @a[scores={ec.wtotem_cd=1..}] ec.wtotem_cd 1

# === PER-PLAYER ABILITY DECAY TIMERS ===
# Cleave stacks (3s)
scoreboard players remove @a[scores={ec.cleave_cd=1..}] ec.cleave_cd 1
execute as @a[scores={ec.cleave_cd=0}] run scoreboard players set @s ec.cleave_stacks 0
execute as @a[scores={ec.cleave_cd=0}] run scoreboard players set @s ec.cleave_cd -1
# Kill Chain (10s)
scoreboard players remove @a[scores={ec.chain_cd=1..}] ec.chain_cd 1
execute as @a[scores={ec.chain_cd=0}] run scoreboard players set @s ec.kill_chain 0
execute as @a[scores={ec.chain_cd=0}] run scoreboard players set @s ec.chain_cd -1
# Soul Harvest (15s)
scoreboard players remove @a[scores={ec.soul_cd=1..}] ec.soul_cd 1
execute as @a[scores={ec.soul_cd=0}] run scoreboard players set @s ec.eyelander_souls 0
execute as @a[scores={ec.soul_cd=0}] run scoreboard players set @s ec.soul_cd -1
# Titan Momentum (5s)
scoreboard players remove @a[scores={ec.titan_cd=1..}] ec.titan_cd 1
execute as @a[scores={ec.titan_cd=0}] run scoreboard players set @s ec.titan_hits 0
execute as @a[scores={ec.titan_cd=0}] run scoreboard players set @s ec.titan_cd -1
# Crimson Tempo (5s) — also removes attribute modifier
scoreboard players remove @a[scores={ec.crimson_cd=1..}] ec.crimson_cd 1
execute as @a[scores={ec.crimson_cd=0}] run attribute @s attack_speed modifier remove evercraft:crimson_tempo
execute as @a[scores={ec.crimson_cd=0}] run scoreboard players set @s ec.crimson_stacks 0
execute as @a[scores={ec.crimson_cd=0}] run scoreboard players set @s ec.crimson_cd -1

# === DIMENSIONAL RIFT — Portal Staff trap processing ===
execute if entity @e[tag=ec.rift] run function evercraft:artifacts/abilities/rift_tick

# === IAI DRAW — Katana sneak stance detection (1s tick = 2 ticks needed for 2s) ===
# Sneaking + holding katana (critical_edge) in mainhand → ready after 2 consecutive ticks
execute as @a[predicate=evercraft:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{ability:"critical_edge"}] unless entity @s[tag=ec.iai_ready] run tag @s add ec.iai_charging
execute as @a[tag=ec.iai_charging,predicate=evercraft:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{ability:"critical_edge"}] run scoreboard players add @s ec.iai_charge 1
# After 2 ticks (2 seconds) of sneaking → Iai ready
execute as @a[tag=ec.iai_charging,scores={ec.iai_charge=2..}] run tag @s add ec.iai_ready
execute as @a[tag=ec.iai_charging,scores={ec.iai_charge=2..}] run tag @s add ec.iai_fired
execute as @a[tag=ec.iai_charging,scores={ec.iai_charge=2..}] run tag @s remove ec.iai_charging
execute as @a[tag=ec.iai_charging,scores={ec.iai_charge=2..}] run scoreboard players set @s ec.iai_charge 0
execute as @a[tag=ec.iai_charging,scores={ec.iai_charge=2..}] run title @s actionbar {text:"Iai Draw Ready!",color:"#FF69B4",bold:true}
execute as @a[tag=ec.iai_charging,scores={ec.iai_charge=2..}] at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.5 1.5
# Stop charging if no longer sneaking or weapon changed
execute as @a[tag=ec.iai_charging] unless predicate evercraft:is_sneaking run tag @s remove ec.iai_charging
execute as @a[tag=ec.iai_charging] unless items entity @s weapon.mainhand *[custom_data~{ability:"critical_edge"}] run tag @s remove ec.iai_charging
execute as @a[tag=ec.iai_charging] unless predicate evercraft:is_sneaking run scoreboard players set @s ec.iai_charge 0
# Clear Iai stance if weapon changes
execute as @a[tag=ec.iai_ready] unless items entity @s weapon.mainhand *[custom_data~{ability:"critical_edge"}] run tag @s remove ec.iai_ready
execute as @a[tag=ec.iai_fired] unless items entity @s weapon.mainhand *[custom_data~{ability:"critical_edge"}] run tag @s remove ec.iai_fired
