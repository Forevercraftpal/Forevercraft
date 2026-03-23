# World Boss — Phase Check
# Called as the boss entity, at the boss position (from tick)

# Read current HP
execute store result score #wb_temp ec.var run data get entity @s Health 1

# Phase 1 → Phase 2 transition (HP dropped below 75%)
execute if score #wb_phase ec.var matches 1 if score #wb_temp ec.var <= #wb_p2_threshold ec.var run function evercraft:bosses/phase/to_phase2

# Phase 2 → Phase 3 transition (HP dropped below 50%)
execute if score #wb_phase ec.var matches 2 if score #wb_temp ec.var <= #wb_p3_threshold ec.var run function evercraft:bosses/phase/to_phase3

# Phase 3 → Phase 4 transition (HP dropped below 25%)
execute if score #wb_phase ec.var matches 3 if score #wb_temp ec.var <= #wb_p4_threshold ec.var run function evercraft:bosses/phase/to_phase4

# Rage trigger (HP dropped below 10%) — one-time enrage within Phase 4
execute if score #wb_phase ec.var matches 4 unless entity @s[tag=wb.enraged] if score #wb_temp ec.var <= #wb_rage_threshold ec.var run function evercraft:bosses/phase/to_rage

# Update bossbar value
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_temp ec.var
