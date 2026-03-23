# Infinite Castle — Active Tick
# Called from main tick.mcfunction ONLY when #ic_active == 1

# === FLOOR TRANSITION PHASE (waiting between floors) ===
execute if score #ic_transition ec.var matches 1.. run function evercraft:castle/floor_transition
execute if score #ic_transition ec.var matches 1.. run return 0

# === HEALTH CHECK (duel-style totem save) ===
# Check each player's health — if <= 2 HP, save them from death
execute as @a[tag=ic.player] run function evercraft:castle/check_health

# === DEATH HANDLED BY TICK.MCFUNCTION (intercepts before tomb system) ===
# If on_death ran and no players remain, #ic_active is already 0
execute if score #ic_active ec.var matches 0 run return 0

# === PLAYER DISCONNECTED ===
execute unless entity @a[tag=ic.player] run function evercraft:castle/fail
execute if score #ic_active ec.var matches 0 run return 0

# === COUNTDOWN PHASE (wave 0) ===
execute if score #ic_wave ec.var matches 0 run scoreboard players remove #ic_timer ec.var 1

# Countdown titles
execute if score #ic_wave ec.var matches 0 if score #ic_timer ec.var matches 40 run function evercraft:dungeon/countdown_title {num:"3",color:"red",pitch:0.5}
execute if score #ic_wave ec.var matches 0 if score #ic_timer ec.var matches 20 run function evercraft:dungeon/countdown_title {num:"2",color:"gold",pitch:0.7}
execute if score #ic_wave ec.var matches 0 if score #ic_timer ec.var matches 1 run function evercraft:dungeon/countdown_title {num:"1",color:"green",pitch:1.0}

# Countdown finished — start wave 1
execute if score #ic_wave ec.var matches 0 if score #ic_timer ec.var matches ..0 run scoreboard players set #ic_wave ec.var 1
execute if score #ic_wave ec.var matches 1 if score #ic_timer ec.var matches ..0 run scoreboard players set #ic_timer ec.var 6000
execute if score #ic_wave ec.var matches 1 if score #ic_timer ec.var matches 6000 at @e[type=marker,tag=ic.center,limit=1] run function evercraft:castle/spawn_wave

# === COMBAT PHASE (waves 1-5) ===
execute unless score #ic_wave ec.var matches 1..5 run return 0

# Decrement timer
scoreboard players remove #ic_timer ec.var 1

# Timer expired — fail
execute if score #ic_timer ec.var matches ..0 run function evercraft:castle/fail
execute if score #ic_active ec.var matches 0 run return 0

# Iron Phalanx boss abilities (Castle floor 20)
execute if entity @e[tag=ic.iron_phalanx] run function evercraft:castle/iron_phalanx/tick

# Iron Phalanx death detection — if phase was set but entity is gone, it died
execute if score #ic_phalanx_phase ec.var matches 1.. unless entity @e[tag=ic.iron_phalanx] run function evercraft:castle/iron_phalanx/death

# Count alive castle mobs
execute store result score #ic_mobs ec.var if entity @e[tag=ic.mob]

# Mobs still alive — show HUD and return
execute unless score #ic_mobs ec.var matches 0 run function evercraft:castle/hud
execute unless score #ic_mobs ec.var matches 0 run return 0

# === WAVE CLEARED ===

# Wave 5 cleared → floor complete, start transition to next floor
execute if score #ic_wave ec.var matches 5 run function evercraft:castle/floor_complete
execute if score #ic_wave ec.var matches 5 run return 0

# Advance to next wave (1-4 → 2-5)
scoreboard players add #ic_wave ec.var 1

# Spawn the new wave
execute at @e[type=marker,tag=ic.center,limit=1] run function evercraft:castle/spawn_wave

# Show HUD
function evercraft:castle/hud
