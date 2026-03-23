# Route to the correct levelup function and refresh display
# Macro arg: tree_id (1-14)
# Run as the player
# If tree is at Lv.25 with prestige<3, route to prestige instead

$scoreboard players set #tree_id adv.temp $(tree_id)

# Check if at max level (25) — read current tree level into #tree_lv
execute if score #tree_id adv.temp matches 1 run scoreboard players operation #tree_lv adv.temp = @s adv.agility
execute if score #tree_id adv.temp matches 2 run scoreboard players operation #tree_lv adv.temp = @s adv.dexterity
execute if score #tree_id adv.temp matches 3 run scoreboard players operation #tree_lv adv.temp = @s adv.evasion
execute if score #tree_id adv.temp matches 4 run scoreboard players operation #tree_lv adv.temp = @s adv.stealth
execute if score #tree_id adv.temp matches 5 run scoreboard players operation #tree_lv adv.temp = @s adv.vitality
execute if score #tree_id adv.temp matches 6 run scoreboard players operation #tree_lv adv.temp = @s adv.taskmaster
execute if score #tree_id adv.temp matches 7 run scoreboard players operation #tree_lv adv.temp = @s adv.beastmaster
execute if score #tree_id adv.temp matches 8 run scoreboard players operation #tree_lv adv.temp = @s adv.victorian
execute if score #tree_id adv.temp matches 9 run scoreboard players operation #tree_lv adv.temp = @s adv.fishing
execute if score #tree_id adv.temp matches 10 run scoreboard players operation #tree_lv adv.temp = @s adv.mining
execute if score #tree_id adv.temp matches 11 run scoreboard players operation #tree_lv adv.temp = @s adv.gathering
execute if score #tree_id adv.temp matches 12 run scoreboard players operation #tree_lv adv.temp = @s adv.blacksmith
execute if score #tree_id adv.temp matches 13 run scoreboard players operation #tree_lv adv.temp = @s adv.explorer
execute if score #tree_id adv.temp matches 14 run scoreboard players operation #tree_lv adv.temp = @s adv.culinary

# Check prestige level for this tree
execute if score #tree_id adv.temp matches 1 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_agil
execute if score #tree_id adv.temp matches 2 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_dext
execute if score #tree_id adv.temp matches 3 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_evas
execute if score #tree_id adv.temp matches 4 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_stea
execute if score #tree_id adv.temp matches 5 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_vita
execute if score #tree_id adv.temp matches 6 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_task
execute if score #tree_id adv.temp matches 7 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_beas
execute if score #tree_id adv.temp matches 8 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_vict
execute if score #tree_id adv.temp matches 9 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_fish
execute if score #tree_id adv.temp matches 10 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_mine
execute if score #tree_id adv.temp matches 11 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_gath
execute if score #tree_id adv.temp matches 12 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_blac
execute if score #tree_id adv.temp matches 13 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_expl
execute if score #tree_id adv.temp matches 14 run scoreboard players operation #tree_pres adv.temp = @s adv.pres_culi

# If at Lv.25 with prestige<3, route to prestige flow instead
$execute if score #tree_lv adv.temp matches 25 if score #tree_pres adv.temp matches ..2 run return run function evercraft:advantage/gui/do_prestige_gui {tree_id:$(tree_id)}

# Normal level-up routing
execute if score #tree_id adv.temp matches 1 run function evercraft:advantage/levelup/agility
execute if score #tree_id adv.temp matches 2 run function evercraft:advantage/levelup/dexterity
execute if score #tree_id adv.temp matches 3 run function evercraft:advantage/levelup/evasion
execute if score #tree_id adv.temp matches 4 run function evercraft:advantage/levelup/stealth
execute if score #tree_id adv.temp matches 5 run function evercraft:advantage/levelup/vitality
execute if score #tree_id adv.temp matches 6 run function evercraft:advantage/levelup/taskmaster
execute if score #tree_id adv.temp matches 7 run function evercraft:advantage/levelup/beastmaster
execute if score #tree_id adv.temp matches 8 run function evercraft:advantage/levelup/victorian
execute if score #tree_id adv.temp matches 9 run function evercraft:advantage/levelup/fishing
execute if score #tree_id adv.temp matches 10 run function evercraft:advantage/levelup/mining
execute if score #tree_id adv.temp matches 11 run function evercraft:advantage/levelup/gathering
execute if score #tree_id adv.temp matches 12 run function evercraft:advantage/levelup/blacksmith
execute if score #tree_id adv.temp matches 13 run function evercraft:advantage/levelup/explorer
execute if score #tree_id adv.temp matches 14 run function evercraft:advantage/levelup/culinary

# Check if tree just reached max level (25) — celebrate!
# Re-read tree level after levelup to see if it's now 25
execute if score #tree_id adv.temp matches 1 run scoreboard players operation #tree_lv adv.temp = @s adv.agility
execute if score #tree_id adv.temp matches 2 run scoreboard players operation #tree_lv adv.temp = @s adv.dexterity
execute if score #tree_id adv.temp matches 3 run scoreboard players operation #tree_lv adv.temp = @s adv.evasion
execute if score #tree_id adv.temp matches 4 run scoreboard players operation #tree_lv adv.temp = @s adv.stealth
execute if score #tree_id adv.temp matches 5 run scoreboard players operation #tree_lv adv.temp = @s adv.vitality
execute if score #tree_id adv.temp matches 6 run scoreboard players operation #tree_lv adv.temp = @s adv.taskmaster
execute if score #tree_id adv.temp matches 7 run scoreboard players operation #tree_lv adv.temp = @s adv.beastmaster
execute if score #tree_id adv.temp matches 8 run scoreboard players operation #tree_lv adv.temp = @s adv.victorian
execute if score #tree_id adv.temp matches 9 run scoreboard players operation #tree_lv adv.temp = @s adv.fishing
execute if score #tree_id adv.temp matches 10 run scoreboard players operation #tree_lv adv.temp = @s adv.mining
execute if score #tree_id adv.temp matches 11 run scoreboard players operation #tree_lv adv.temp = @s adv.gathering
execute if score #tree_id adv.temp matches 12 run scoreboard players operation #tree_lv adv.temp = @s adv.blacksmith
execute if score #tree_id adv.temp matches 13 run scoreboard players operation #tree_lv adv.temp = @s adv.explorer
execute if score #tree_id adv.temp matches 14 run scoreboard players operation #tree_lv adv.temp = @s adv.culinary
$execute if score #tree_lv adv.temp matches 25 at @s run function evercraft:advantage/celebrate_max {tree_id:$(tree_id)}

# Refresh all tree displays after levelup attempt
function evercraft:advantage/gui/refresh
