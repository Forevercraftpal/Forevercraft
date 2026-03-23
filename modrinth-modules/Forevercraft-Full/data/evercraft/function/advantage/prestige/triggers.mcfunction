# Prestige — Trigger Router
# Routes /trigger adv.prestige 1-13 to prestige handler for the corresponding tree
# Checks eligibility (level 25, prestige < 3) before processing

# Store tree ID
scoreboard players operation #pres_tree adv.temp = @s adv.prestige

# Read current tree level into #pres_level
execute if score #pres_tree adv.temp matches 1 run scoreboard players operation #pres_level adv.temp = @s adv.agility
execute if score #pres_tree adv.temp matches 2 run scoreboard players operation #pres_level adv.temp = @s adv.dexterity
execute if score #pres_tree adv.temp matches 3 run scoreboard players operation #pres_level adv.temp = @s adv.evasion
execute if score #pres_tree adv.temp matches 4 run scoreboard players operation #pres_level adv.temp = @s adv.stealth
execute if score #pres_tree adv.temp matches 5 run scoreboard players operation #pres_level adv.temp = @s adv.vitality
execute if score #pres_tree adv.temp matches 6 run scoreboard players operation #pres_level adv.temp = @s adv.taskmaster
execute if score #pres_tree adv.temp matches 7 run scoreboard players operation #pres_level adv.temp = @s adv.beastmaster
execute if score #pres_tree adv.temp matches 8 run scoreboard players operation #pres_level adv.temp = @s adv.victorian
execute if score #pres_tree adv.temp matches 9 run scoreboard players operation #pres_level adv.temp = @s adv.fishing
execute if score #pres_tree adv.temp matches 10 run scoreboard players operation #pres_level adv.temp = @s adv.mining
execute if score #pres_tree adv.temp matches 11 run scoreboard players operation #pres_level adv.temp = @s adv.gathering
execute if score #pres_tree adv.temp matches 12 run scoreboard players operation #pres_level adv.temp = @s adv.blacksmith
execute if score #pres_tree adv.temp matches 13 run scoreboard players operation #pres_level adv.temp = @s adv.explorer
execute if score #pres_tree adv.temp matches 14 run scoreboard players operation #pres_level adv.temp = @s adv.culinary

# Read current prestige level into #pres_current
execute if score #pres_tree adv.temp matches 1 run scoreboard players operation #pres_current adv.temp = @s adv.pres_agil
execute if score #pres_tree adv.temp matches 2 run scoreboard players operation #pres_current adv.temp = @s adv.pres_dext
execute if score #pres_tree adv.temp matches 3 run scoreboard players operation #pres_current adv.temp = @s adv.pres_evas
execute if score #pres_tree adv.temp matches 4 run scoreboard players operation #pres_current adv.temp = @s adv.pres_stea
execute if score #pres_tree adv.temp matches 5 run scoreboard players operation #pres_current adv.temp = @s adv.pres_vita
execute if score #pres_tree adv.temp matches 6 run scoreboard players operation #pres_current adv.temp = @s adv.pres_task
execute if score #pres_tree adv.temp matches 7 run scoreboard players operation #pres_current adv.temp = @s adv.pres_beas
execute if score #pres_tree adv.temp matches 8 run scoreboard players operation #pres_current adv.temp = @s adv.pres_vict
execute if score #pres_tree adv.temp matches 9 run scoreboard players operation #pres_current adv.temp = @s adv.pres_fish
execute if score #pres_tree adv.temp matches 10 run scoreboard players operation #pres_current adv.temp = @s adv.pres_mine
execute if score #pres_tree adv.temp matches 11 run scoreboard players operation #pres_current adv.temp = @s adv.pres_gath
execute if score #pres_tree adv.temp matches 12 run scoreboard players operation #pres_current adv.temp = @s adv.pres_blac
execute if score #pres_tree adv.temp matches 13 run scoreboard players operation #pres_current adv.temp = @s adv.pres_expl
execute if score #pres_tree adv.temp matches 14 run scoreboard players operation #pres_current adv.temp = @s adv.pres_culi

# Check eligibility and execute
function evercraft:advantage/prestige/check_eligible
