# The Eternal Pharaoh — Phase 3: Time Dilation (33%-0% HP)
# - Time warps: normal state (200 ticks) → pulse state (100 ticks)
# - Normal: Boss Speed III, Players Slowness I
# - Pulse: Boss Slowness III, Players Speed II (DPS window)
# - Boss attacks apply Wither I during normal state

# ── Time State Toggle ──
execute if score #rd_ep_time_timer ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/time_toggle

# ── Normal State Effects ──
execute if score #rd_ep_time_state ec.var matches 0 run effect give @a[tag=ec.rd_participant] slowness 2 0 true

# Boss Wither on hit during normal state (applied via proximity every 20 ticks)
execute if score #rd_ep_time_state ec.var matches 0 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run execute store result score #rd_temp ec.var run time query gametime
execute if score #rd_ep_time_state ec.var matches 0 run scoreboard players operation #rd_temp ec.var %= #20 adv.temp
execute if score #rd_ep_time_state ec.var matches 0 if score #rd_temp ec.var matches 0 as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run effect give @a[tag=ec.rd_participant,distance=..4] wither 3 0

# ── Pulse State Effects ──
execute if score #rd_ep_time_state ec.var matches 1 run effect give @a[tag=ec.rd_participant] speed 2 1 true

# Curses continue
execute if score #rd_ep_curse_cd ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/abilities/apply_curse
execute if score #rd_ep_curse_cd ec.var matches 0 run scoreboard players set #rd_ep_curse_cd ec.var 200
