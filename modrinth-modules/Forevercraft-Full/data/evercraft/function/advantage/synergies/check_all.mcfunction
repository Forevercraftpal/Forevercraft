# Synergy Check — Evaluate all 4 synergy requirements + tick active effects
# Called 1/s from tick/main as each player

# Check synergy requirements (sets flag scoreboards)
function evercraft:advantage/synergies/combat
function evercraft:advantage/synergies/gathering
function evercraft:advantage/synergies/utility
function evercraft:advantage/synergies/support

# Tick active synergy timers
execute if score @s adv.syn_trance matches 1.. run function evercraft:advantage/synergies/battle_trance_tick
execute if score @s adv.syn_shadow matches 1.. run function evercraft:advantage/synergies/shadow_step_tick

# Decrement Shadow Step cooldown (by 20 ticks per second)
execute if score @s adv.syn_shad_cd matches 1.. run scoreboard players remove @s adv.syn_shad_cd 20
execute if score @s adv.syn_shad_cd matches ..-1 run scoreboard players set @s adv.syn_shad_cd 0
