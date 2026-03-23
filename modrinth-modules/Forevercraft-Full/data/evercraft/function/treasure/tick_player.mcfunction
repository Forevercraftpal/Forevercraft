# OPT: Luck score moved to luck_buffs/apply (1s schedule, not per-tick)

# Mining — block-mine detection (sum blocks, compare to previous snapshot)
# First tick: initialize adv.mine_prev without triggering anything (prevents false proc)
execute if score @s adv.mining matches 1.. run function evercraft:advantage/mining/sum_blocks

# Mining Surge proc (only when surge not already active)
execute if score @s adv.mining matches 1.. unless score @s adv.surge_timer matches 1.. if score @s adv.mine_prev matches -2147483648.. unless score #mine_rt adv.temp = @s adv.mine_prev run function evercraft:advantage/mining/surge_check

# Prestige P2: Ore Doubling — 10% chance per block mined
execute if score @s adv.pa_mine2 matches 1 if score @s adv.mine_prev matches -2147483648.. unless score #mine_rt adv.temp = @s adv.mine_prev run function evercraft:advantage/prestige/abilities/ore_double_check

# Prestige P3: Ancient Ore — 0.5% chance per block mined
execute if score @s adv.pa_mine3 matches 1 if score @s adv.mine_prev matches -2147483648.. unless score #mine_rt adv.temp = @s adv.mine_prev run function evercraft:advantage/prestige/abilities/ancient_ore_check

# Blacksmith P3: Auto-Smelt — bonus smelted ore on mine
execute if score @s adv.pa_blac3 matches 1 run function evercraft:advantage/prestige/abilities/auto_smelt_check

# Update mine_prev snapshot
execute if score @s adv.mining matches 1.. run scoreboard players operation @s adv.mine_prev = #mine_rt adv.temp

# Mining Surge timer countdown (remove boost when timer expires)
execute if score @s adv.surge_timer matches 1 run function evercraft:advantage/mining/surge_expire
execute if score @s adv.surge_timer matches 1.. run scoreboard players remove @s adv.surge_timer 1

# TRIGGER COMMANDS
execute if entity @s[scores={ec.death=1..}] run function evercraft:treasure/mechanics/death

# RUNES
execute if entity @s[scores={ec.sponge_rune=1..}] run function evercraft:treasure/runes/tide/timer
execute if entity @s[scores={ec.end_rune=1..}] run function evercraft:treasure/runes/zephyr/timer
execute if entity @s[scores={ec.ice_rune=1..}] run function evercraft:treasure/runes/ember/timer
execute if entity @s[scores={ec.assa_rune=1..}] run function evercraft:treasure/runes/quick/timer
execute if entity @s[scores={ec.jungle_rune=1..}] run function evercraft:treasure/runes/briar/timer
execute if entity @s[scores={ec.black_rune=1..}] run function evercraft:treasure/runes/obsidian/timer