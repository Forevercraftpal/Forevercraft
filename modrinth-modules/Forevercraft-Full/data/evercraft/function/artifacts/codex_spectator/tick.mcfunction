# Codex of Everything — Spectator System Tick
# Handles timer countdown and cooldown

# Early exit if no one has active timer or cooldown (OPT Session 76)
execute unless entity @a[scores={ec.codex_spec_time=0..}] unless entity @a[scores={ec.codex_spec_cd=1..}] run return 0

# Decrement spectator timer for players in spectator with active timer
execute as @a[scores={ec.codex_spec_time=1..},gamemode=spectator] run scoreboard players remove @s ec.codex_spec_time 1

# Warning at 5 seconds remaining
execute as @a[scores={ec.codex_spec_time=100}] run tellraw @s [{text:"Codex of Everything",color:"light_purple"},{text:" — 5 seconds remaining!",color:"yellow"}]
execute as @a[scores={ec.codex_spec_time=100}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1.5

# End spectator when timer hits 0
execute as @a[scores={ec.codex_spec_time=0},gamemode=spectator] run function evercraft:artifacts/codex_spectator/end_spectator
execute as @a[scores={ec.codex_spec_time=0}] run scoreboard players set @s ec.codex_spec_time -1

# Decrement cooldown for all players
scoreboard players remove @a[scores={ec.codex_spec_cd=1..}] ec.codex_spec_cd 1
