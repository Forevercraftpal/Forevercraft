# Spirit Raids — Active Raid Tick
# Called from raids/tick when #rd_active == 1

# === DISCONNECT GRACE PERIOD ===
# If no raid players online (all disconnected), give 60s to rejoin before failing
execute store result score #rd_online ec.var if entity @a[tag=rd.player]
execute if score #rd_online ec.var matches 0 run scoreboard players add #rd_dc_timer ec.var 1
execute if score #rd_online ec.var matches 0 if score #rd_dc_timer ec.var matches 1200.. run function evercraft:raids/exit_lose
execute if score #rd_online ec.var matches 0 run return 0
execute if score #rd_online ec.var matches 1.. run scoreboard players set #rd_dc_timer ec.var 0

# === BOSS FIGHT TICK ===
execute if score #rd_boss_alive ec.var matches 1 run function evercraft:raids/boss/tick
execute if score #rd_active ec.var matches 0 run return 0

# === COUNTDOWN PHASE (wave 0 — preparing next wave) ===
execute if score #rd_wave ec.var matches 0 run scoreboard players remove #rd_timer ec.var 1

# Countdown titles
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches 40 run title @a[tag=rd.player] title {text:"3",color:"red",bold:true}
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches 40 run playsound minecraft:block.note_block.pling master @a[tag=rd.player] ~ ~ ~ 1 0.5
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches 20 run title @a[tag=rd.player] title {text:"2",color:"gold",bold:true}
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches 20 run playsound minecraft:block.note_block.pling master @a[tag=rd.player] ~ ~ ~ 1 0.7
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches 1 run title @a[tag=rd.player] title {text:"1",color:"green",bold:true}
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches 1 run playsound minecraft:block.note_block.pling master @a[tag=rd.player] ~ ~ ~ 1 1.0

# Countdown finished — start wave 1
execute if score #rd_wave ec.var matches 0 if score #rd_timer ec.var matches ..0 run scoreboard players set #rd_wave ec.var 1
execute if score #rd_wave ec.var matches 1 if score #rd_timer ec.var matches ..0 run scoreboard players set #rd_timer ec.var 6000
execute if score #rd_wave ec.var matches 1 if score #rd_timer ec.var matches 6000 at @e[type=marker,tag=rd.center,limit=1] run function evercraft:raids/floor/spawn_mobs

# === COMBAT PHASE (waves 1-5) ===
execute unless score #rd_wave ec.var matches 1..5 run return 0

# Decrement timer
scoreboard players remove #rd_timer ec.var 1

# Timer expired — fail the raid
execute if score #rd_timer ec.var matches ..0 run function evercraft:raids/exit_lose
execute if score #rd_active ec.var matches 0 run return 0

# Count alive raid mobs
execute store result score #rd_mobs ec.var if entity @e[tag=rd.mob]

# Mobs still alive — show HUD and return
execute unless score #rd_mobs ec.var matches 0 run return 0

# === WAVE CLEARED ===

# Wave 5 cleared — floor cleared
execute if score #rd_wave ec.var matches 5 run function evercraft:raids/floor/clear_check
execute if score #rd_wave ec.var matches 5 run return 0

# Advance to next wave (waves 1-4 → 2-5)
scoreboard players add #rd_wave ec.var 1
execute at @e[type=marker,tag=rd.center,limit=1] run function evercraft:raids/floor/spawn_mobs
