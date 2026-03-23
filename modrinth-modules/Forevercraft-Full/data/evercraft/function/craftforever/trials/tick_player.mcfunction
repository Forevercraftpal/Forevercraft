# Trade Trial — Per-player tick
# Run as/at: player with ec.tt_player tag

# === POST-COMPLETION COUNTDOWN ===
# After completing, timer goes negative. At -60 (3 seconds), cleanup.
execute if entity @s[tag=ec.tt_complete] run scoreboard players remove @s ec.tt_timer 1
execute if entity @s[tag=ec.tt_complete] if score @s ec.tt_timer matches ..-60 run function evercraft:craftforever/trials/cleanup_player
execute if entity @s[tag=ec.tt_complete] run return 0

# === TIMER ===
scoreboard players remove @s ec.tt_timer 1

# Update bossbar
execute store result bossbar evercraft:trial_timer value run scoreboard players get @s ec.tt_timer

# Check timer expiry
execute if score @s ec.tt_timer matches ..0 run return run function evercraft:craftforever/trials/fail

# === SCORE TRACKING (type-specific) ===
execute if score @s ec.tt_type matches 1 run function evercraft:craftforever/trials/types/mining/tick
execute if score @s ec.tt_type matches 2 run function evercraft:craftforever/trials/types/farming/tick
execute if score @s ec.tt_type matches 3 run function evercraft:craftforever/trials/types/fishing/tick
execute if score @s ec.tt_type matches 4 run function evercraft:craftforever/trials/types/building/tick
execute if score @s ec.tt_type matches 5 run function evercraft:craftforever/trials/types/lumber/tick
execute if score @s ec.tt_type matches 6 run function evercraft:craftforever/trials/types/artisan/tick

# === CHECK COMPLETION ===
execute if score @s ec.tt_score matches 1.. run scoreboard players operation #tt_check ec.var = @s ec.tt_score
execute if score @s ec.tt_score matches 1.. run scoreboard players operation #tt_check ec.var -= @s ec.tt_target
execute if score @s ec.tt_score matches 1.. if score #tt_check ec.var matches 0.. run function evercraft:craftforever/trials/complete

# === ACTIONBAR DISPLAY ===
execute if score @s ec.tt_timer matches 1.. store result score #tt_sec ec.var run scoreboard players get @s ec.tt_timer
scoreboard players operation #tt_sec ec.var /= #20 ec.const
execute store result storage evercraft:trials score int 1 run scoreboard players get @s ec.tt_score
execute store result storage evercraft:trials target int 1 run scoreboard players get @s ec.tt_target
execute store result storage evercraft:trials seconds int 1 run scoreboard players get #tt_sec ec.var
function evercraft:craftforever/trials/show_actionbar with storage evercraft:trials

# === BOUNDARY CHECK ===
execute if entity @s[y=0,dy=294] run function evercraft:craftforever/trials/respawn_arena
execute if entity @s[y=340,dy=1000] run function evercraft:craftforever/trials/respawn_arena
