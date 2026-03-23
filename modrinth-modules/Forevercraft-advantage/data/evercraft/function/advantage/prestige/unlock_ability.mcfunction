# Prestige — Unlock Prestige Ability
# Routes to tree-specific ability function based on #pres_tree (1-14) and #pres_current (1-3)
# Each ability function sets flags/grants items. Actual effects handled by tick/hook functions.

# Calculate ability index: (tree-1)*3 + prestige = unique ID 1-39
scoreboard players operation #ability_id adv.temp = #pres_tree adv.temp
scoreboard players remove #ability_id adv.temp 1
scoreboard players operation #ability_id adv.temp *= #3 adv.temp
scoreboard players operation #ability_id adv.temp += #pres_current adv.temp

# Agility (tree 1): P1=1, P2=2, P3=3
execute if score #ability_id adv.temp matches 1 run function evercraft:advantage/prestige/abilities/agility_p1
execute if score #ability_id adv.temp matches 2 run function evercraft:advantage/prestige/abilities/agility_p2
execute if score #ability_id adv.temp matches 3 run function evercraft:advantage/prestige/abilities/agility_p3

# Dexterity (tree 2): P1=4, P2=5, P3=6
execute if score #ability_id adv.temp matches 4 run function evercraft:advantage/prestige/abilities/dexterity_p1
execute if score #ability_id adv.temp matches 5 run function evercraft:advantage/prestige/abilities/dexterity_p2
execute if score #ability_id adv.temp matches 6 run function evercraft:advantage/prestige/abilities/dexterity_p3

# Evasion (tree 3): P1=7, P2=8, P3=9
execute if score #ability_id adv.temp matches 7 run function evercraft:advantage/prestige/abilities/evasion_p1
execute if score #ability_id adv.temp matches 8 run function evercraft:advantage/prestige/abilities/evasion_p2
execute if score #ability_id adv.temp matches 9 run function evercraft:advantage/prestige/abilities/evasion_p3

# Stealth (tree 4): P1=10, P2=11, P3=12
execute if score #ability_id adv.temp matches 10 run function evercraft:advantage/prestige/abilities/stealth_p1
execute if score #ability_id adv.temp matches 11 run function evercraft:advantage/prestige/abilities/stealth_p2
execute if score #ability_id adv.temp matches 12 run function evercraft:advantage/prestige/abilities/stealth_p3

# Vitality (tree 5): P1=13, P2=14, P3=15
execute if score #ability_id adv.temp matches 13 run function evercraft:advantage/prestige/abilities/vitality_p1
execute if score #ability_id adv.temp matches 14 run function evercraft:advantage/prestige/abilities/vitality_p2
execute if score #ability_id adv.temp matches 15 run function evercraft:advantage/prestige/abilities/vitality_p3

# Taskmaster (tree 6): P1=16, P2=17, P3=18
execute if score #ability_id adv.temp matches 16 run function evercraft:advantage/prestige/abilities/taskmaster_p1
execute if score #ability_id adv.temp matches 17 run function evercraft:advantage/prestige/abilities/taskmaster_p2
execute if score #ability_id adv.temp matches 18 run function evercraft:advantage/prestige/abilities/taskmaster_p3

# Beastmaster (tree 7): P1=19, P2=20, P3=21
execute if score #ability_id adv.temp matches 19 run function evercraft:advantage/prestige/abilities/beastmaster_p1
execute if score #ability_id adv.temp matches 20 run function evercraft:advantage/prestige/abilities/beastmaster_p2
execute if score #ability_id adv.temp matches 21 run function evercraft:advantage/prestige/abilities/beastmaster_p3

# Victorian (tree 8): P1=22, P2=23, P3=24
execute if score #ability_id adv.temp matches 22 run function evercraft:advantage/prestige/abilities/victorian_p1
execute if score #ability_id adv.temp matches 23 run function evercraft:advantage/prestige/abilities/victorian_p2
execute if score #ability_id adv.temp matches 24 run function evercraft:advantage/prestige/abilities/victorian_p3

# Fishing (tree 9): P1=25, P2=26, P3=27
execute if score #ability_id adv.temp matches 25 run function evercraft:advantage/prestige/abilities/fishing_p1
execute if score #ability_id adv.temp matches 26 run function evercraft:advantage/prestige/abilities/fishing_p2
execute if score #ability_id adv.temp matches 27 run function evercraft:advantage/prestige/abilities/fishing_p3

# Mining (tree 10): P1=28, P2=29, P3=30
execute if score #ability_id adv.temp matches 28 run function evercraft:advantage/prestige/abilities/mining_p1
execute if score #ability_id adv.temp matches 29 run function evercraft:advantage/prestige/abilities/mining_p2
execute if score #ability_id adv.temp matches 30 run function evercraft:advantage/prestige/abilities/mining_p3

# Gathering (tree 11): P1=31, P2=32, P3=33
execute if score #ability_id adv.temp matches 31 run function evercraft:advantage/prestige/abilities/gathering_p1
execute if score #ability_id adv.temp matches 32 run function evercraft:advantage/prestige/abilities/gathering_p2
execute if score #ability_id adv.temp matches 33 run function evercraft:advantage/prestige/abilities/gathering_p3

# Blacksmith (tree 12): P1=34, P2=35, P3=36
execute if score #ability_id adv.temp matches 34 run function evercraft:advantage/prestige/abilities/blacksmith_p1
execute if score #ability_id adv.temp matches 35 run function evercraft:advantage/prestige/abilities/blacksmith_p2
execute if score #ability_id adv.temp matches 36 run function evercraft:advantage/prestige/abilities/blacksmith_p3

# Explorer (tree 13): P1=37, P2=38, P3=39
execute if score #ability_id adv.temp matches 37 run function evercraft:advantage/prestige/abilities/explorer_p1
execute if score #ability_id adv.temp matches 38 run function evercraft:advantage/prestige/abilities/explorer_p2
execute if score #ability_id adv.temp matches 39 run function evercraft:advantage/prestige/abilities/explorer_p3

# Culinary (tree 14): P1=40, P2=41, P3=42
execute if score #ability_id adv.temp matches 40 run function evercraft:advantage/prestige/abilities/culinary_p1
execute if score #ability_id adv.temp matches 41 run function evercraft:advantage/prestige/abilities/culinary_p2
execute if score #ability_id adv.temp matches 42 run function evercraft:advantage/prestige/abilities/culinary_p3
