# Phase 5: THE AWAKENING — tick
# Score accumulates every second: base 1 + resonance bonus
# Resonance makes this phase easier/faster

# Every 20 ticks (1 second), add score
execute store result score #gf_mod ec.var run time query gametime
scoreboard players operation #gf_mod ec.var %= #20 adv.temp
execute if score #gf_mod ec.var matches 0 run scoreboard players add @s ec.gf_score 1
# Resonance adds bonus points each second
execute if score #gf_mod ec.var matches 0 if score @s ec.gf_reson matches 1.. run scoreboard players operation @s ec.gf_score += @s ec.gf_reson

# Dramatic particles every 10 ticks
execute store result score #gf_mod2 ec.var run time query gametime
scoreboard players operation #gf_mod2 ec.var %= #10 adv.temp
execute if score #gf_mod2 ec.var matches 0 run particle dust{color:[0.3,1.0,0.3],scale:1.5} ~ ~1 ~ 1.5 1.5 1.5 0.02 10
execute if score #gf_mod2 ec.var matches 0 run particle enchant ~ ~2 ~ 1 1 1 0.5 8

# Actionbar
execute if score #gf_mod ec.var matches 0 run title @s actionbar [{"text":"[Awakening] ","color":"light_purple"},{"score":{"name":"@s","objective":"ec.gf_score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"yellow","bold":true},{"text":" resonance  |  ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_timer"},"color":"gold"},{"text":"t left","color":"gray"}]

# Check completion (return to prevent double-fire with fail)
execute if score @s ec.gf_score >= @s ec.gf_target run return run function evercraft:craftforever/grand_forge/complete

# Time's up
execute if score @s ec.gf_timer matches ..0 run function evercraft:craftforever/grand_forge/fail
