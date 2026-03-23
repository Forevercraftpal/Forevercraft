# Refresh all tree level displays
# Stores level + tree info into storage, calls refresh_tree macro
# Includes prestige stars, color overrides, and [+Prestige] indicator at Lv.25
# Only runs when on page 1 (or during initial spawn before page is set)

# Skip if not on page 1 (unless gui_page is 0, meaning initial spawn)
execute unless score @s adv.gui_page matches 0..1 run return 0

# Query player XP levels once for all readiness checks
execute store result score @s adv.xp_levels run experience query @s levels

# Agility (slot 0)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.agility
data modify storage evercraft:advantage gui_slot set value 0
data modify storage evercraft:advantage gui_name set value "Agility"
data modify storage evercraft:advantage gui_color set value "aqua"
execute if score @s adv.pres_agil matches 1 run data modify storage evercraft:advantage gui_name set value "Agility ★"
execute if score @s adv.pres_agil matches 2 run data modify storage evercraft:advantage gui_name set value "Agility ★★"
execute if score @s adv.pres_agil matches 3 run data modify storage evercraft:advantage gui_name set value "Agility ★★★"
execute if score @s adv.pres_agil matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_agil matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_agil matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.agility matches 25 if score @s adv.pres_agil matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.agility matches ..24 run function evercraft:advantage/calc/agility
execute if score @s adv.agility matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_walk >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Dexterity (slot 1)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.dexterity
data modify storage evercraft:advantage gui_slot set value 1
data modify storage evercraft:advantage gui_name set value "Dexterity"
data modify storage evercraft:advantage gui_color set value "yellow"
execute if score @s adv.pres_dext matches 1 run data modify storage evercraft:advantage gui_name set value "Dexterity ★"
execute if score @s adv.pres_dext matches 2 run data modify storage evercraft:advantage gui_name set value "Dexterity ★★"
execute if score @s adv.pres_dext matches 3 run data modify storage evercraft:advantage gui_name set value "Dexterity ★★★"
execute if score @s adv.pres_dext matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_dext matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_dext matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.dexterity matches 25 if score @s adv.pres_dext matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.dexterity matches ..24 run function evercraft:advantage/calc/dexterity
execute if score @s adv.dexterity matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_place >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Evasion (slot 2)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.evasion
data modify storage evercraft:advantage gui_slot set value 2
data modify storage evercraft:advantage gui_name set value "Evasion"
data modify storage evercraft:advantage gui_color set value "white"
execute if score @s adv.pres_evas matches 1 run data modify storage evercraft:advantage gui_name set value "Evasion ★"
execute if score @s adv.pres_evas matches 2 run data modify storage evercraft:advantage gui_name set value "Evasion ★★"
execute if score @s adv.pres_evas matches 3 run data modify storage evercraft:advantage gui_name set value "Evasion ★★★"
execute if score @s adv.pres_evas matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_evas matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_evas matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.evasion matches 25 if score @s adv.pres_evas matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.evasion matches ..24 run function evercraft:advantage/calc/evasion
execute if score @s adv.evasion matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_hit >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Stealth (slot 3)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.stealth
data modify storage evercraft:advantage gui_slot set value 3
data modify storage evercraft:advantage gui_name set value "Stealth"
data modify storage evercraft:advantage gui_color set value "dark_gray"
execute if score @s adv.pres_stea matches 1 run data modify storage evercraft:advantage gui_name set value "Stealth ★"
execute if score @s adv.pres_stea matches 2 run data modify storage evercraft:advantage gui_name set value "Stealth ★★"
execute if score @s adv.pres_stea matches 3 run data modify storage evercraft:advantage gui_name set value "Stealth ★★★"
execute if score @s adv.pres_stea matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_stea matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_stea matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.stealth matches 25 if score @s adv.pres_stea matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.stealth matches ..24 run function evercraft:advantage/calc/stealth
execute if score @s adv.stealth matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_crouch >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Vitality (slot 4)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.vitality
data modify storage evercraft:advantage gui_slot set value 4
data modify storage evercraft:advantage gui_name set value "Vitality"
data modify storage evercraft:advantage gui_color set value "red"
execute if score @s adv.pres_vita matches 1 run data modify storage evercraft:advantage gui_name set value "Vitality ★"
execute if score @s adv.pres_vita matches 2 run data modify storage evercraft:advantage gui_name set value "Vitality ★★"
execute if score @s adv.pres_vita matches 3 run data modify storage evercraft:advantage gui_name set value "Vitality ★★★"
execute if score @s adv.pres_vita matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_vita matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_vita matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.vitality matches 25 if score @s adv.pres_vita matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.vitality matches ..24 run function evercraft:advantage/calc/vitality
execute if score @s adv.vitality matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_food >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Taskmaster (slot 5)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.taskmaster
data modify storage evercraft:advantage gui_slot set value 5
data modify storage evercraft:advantage gui_name set value "Taskmaster"
data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_task matches 1 run data modify storage evercraft:advantage gui_name set value "Taskmaster ★"
execute if score @s adv.pres_task matches 2 run data modify storage evercraft:advantage gui_name set value "Taskmaster ★★"
execute if score @s adv.pres_task matches 3 run data modify storage evercraft:advantage gui_name set value "Taskmaster ★★★"
execute if score @s adv.pres_task matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_task matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_task matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.taskmaster matches 25 if score @s adv.pres_task matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.taskmaster matches ..24 run function evercraft:advantage/calc/taskmaster
execute if score @s adv.taskmaster matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_quests >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Beastmaster (slot 6)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.beastmaster
data modify storage evercraft:advantage gui_slot set value 6
data modify storage evercraft:advantage gui_name set value "Beastmaster"
data modify storage evercraft:advantage gui_color set value "green"
execute if score @s adv.pres_beas matches 1 run data modify storage evercraft:advantage gui_name set value "Beastmaster ★"
execute if score @s adv.pres_beas matches 2 run data modify storage evercraft:advantage gui_name set value "Beastmaster ★★"
execute if score @s adv.pres_beas matches 3 run data modify storage evercraft:advantage gui_name set value "Beastmaster ★★★"
execute if score @s adv.pres_beas matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_beas matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_beas matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.beastmaster matches 25 if score @s adv.pres_beas matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.beastmaster matches ..24 run function evercraft:advantage/calc/beastmaster
execute if score @s adv.beastmaster matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_pets100 >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Victorian (slot 7)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.victorian
data modify storage evercraft:advantage gui_slot set value 7
data modify storage evercraft:advantage gui_name set value "Victorian"
data modify storage evercraft:advantage gui_color set value "dark_red"
execute if score @s adv.pres_vict matches 1 run data modify storage evercraft:advantage gui_name set value "Victorian ★"
execute if score @s adv.pres_vict matches 2 run data modify storage evercraft:advantage gui_name set value "Victorian ★★"
execute if score @s adv.pres_vict matches 3 run data modify storage evercraft:advantage gui_name set value "Victorian ★★★"
execute if score @s adv.pres_vict matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_vict matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_vict matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.victorian matches 25 if score @s adv.pres_vict matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.victorian matches ..24 run function evercraft:advantage/calc/victorian
execute if score @s adv.victorian matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_mobs >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Fishing (slot 8)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.fishing
data modify storage evercraft:advantage gui_slot set value 8
data modify storage evercraft:advantage gui_name set value "Fishing"
data modify storage evercraft:advantage gui_color set value "blue"
execute if score @s adv.pres_fish matches 1 run data modify storage evercraft:advantage gui_name set value "Fishing ★"
execute if score @s adv.pres_fish matches 2 run data modify storage evercraft:advantage gui_name set value "Fishing ★★"
execute if score @s adv.pres_fish matches 3 run data modify storage evercraft:advantage gui_name set value "Fishing ★★★"
execute if score @s adv.pres_fish matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_fish matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_fish matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.fishing matches 25 if score @s adv.pres_fish matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.fishing matches ..24 run function evercraft:advantage/calc/fishing
execute if score @s adv.fishing matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_fish >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Mining (slot 9)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.mining
data modify storage evercraft:advantage gui_slot set value 9
data modify storage evercraft:advantage gui_name set value "Mining"
data modify storage evercraft:advantage gui_color set value "gold"
execute if score @s adv.pres_mine matches 1 run data modify storage evercraft:advantage gui_name set value "Mining ★"
execute if score @s adv.pres_mine matches 2 run data modify storage evercraft:advantage gui_name set value "Mining ★★"
execute if score @s adv.pres_mine matches 3 run data modify storage evercraft:advantage gui_name set value "Mining ★★★"
execute if score @s adv.pres_mine matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_mine matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_mine matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.mining matches 25 if score @s adv.pres_mine matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.mining matches ..24 run function evercraft:advantage/calc/mining
execute if score @s adv.mining matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_mine >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Gathering (slot 10)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.gathering
data modify storage evercraft:advantage gui_slot set value 10
data modify storage evercraft:advantage gui_name set value "Gathering"
data modify storage evercraft:advantage gui_color set value "green"
execute if score @s adv.pres_gath matches 1 run data modify storage evercraft:advantage gui_name set value "Gathering ★"
execute if score @s adv.pres_gath matches 2 run data modify storage evercraft:advantage gui_name set value "Gathering ★★"
execute if score @s adv.pres_gath matches 3 run data modify storage evercraft:advantage gui_name set value "Gathering ★★★"
execute if score @s adv.pres_gath matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_gath matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_gath matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.gathering matches 25 if score @s adv.pres_gath matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.gathering matches ..24 run function evercraft:advantage/calc/gathering
execute if score @s adv.gathering matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_harvest >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Blacksmith (slot 11)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.blacksmith
data modify storage evercraft:advantage gui_slot set value 11
data modify storage evercraft:advantage gui_name set value "Blacksmith"
data modify storage evercraft:advantage gui_color set value "gray"
execute if score @s adv.pres_blac matches 1 run data modify storage evercraft:advantage gui_name set value "Blacksmith ★"
execute if score @s adv.pres_blac matches 2 run data modify storage evercraft:advantage gui_name set value "Blacksmith ★★"
execute if score @s adv.pres_blac matches 3 run data modify storage evercraft:advantage gui_name set value "Blacksmith ★★★"
execute if score @s adv.pres_blac matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_blac matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_blac matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.blacksmith matches 25 if score @s adv.pres_blac matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.blacksmith matches ..24 run function evercraft:advantage/calc/blacksmith
execute if score @s adv.blacksmith matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_smelt >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Explorer (slot 12)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.explorer
data modify storage evercraft:advantage gui_slot set value 12
data modify storage evercraft:advantage gui_name set value "Explorer"
data modify storage evercraft:advantage gui_color set value "dark_aqua"
execute if score @s adv.pres_expl matches 1 run data modify storage evercraft:advantage gui_name set value "Explorer ★"
execute if score @s adv.pres_expl matches 2 run data modify storage evercraft:advantage gui_name set value "Explorer ★★"
execute if score @s adv.pres_expl matches 3 run data modify storage evercraft:advantage gui_name set value "Explorer ★★★"
execute if score @s adv.pres_expl matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_expl matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_expl matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.explorer matches 25 if score @s adv.pres_expl matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.explorer matches ..24 run function evercraft:advantage/calc/explorer
execute if score @s adv.explorer matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_struct >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage

# Culinary (slot 13)
execute store result storage evercraft:advantage gui_level int 1 run scoreboard players get @s adv.culinary
data modify storage evercraft:advantage gui_slot set value 13
data modify storage evercraft:advantage gui_name set value "Culinary"
data modify storage evercraft:advantage gui_color set value "green"
execute if score @s adv.pres_culi matches 1 run data modify storage evercraft:advantage gui_name set value "Culinary ★"
execute if score @s adv.pres_culi matches 2 run data modify storage evercraft:advantage gui_name set value "Culinary ★★"
execute if score @s adv.pres_culi matches 3 run data modify storage evercraft:advantage gui_name set value "Culinary ★★★"
execute if score @s adv.pres_culi matches 1 run data modify storage evercraft:advantage gui_color set value "dark_purple"
execute if score @s adv.pres_culi matches 2 run data modify storage evercraft:advantage gui_color set value "light_purple"
execute if score @s adv.pres_culi matches 3 run data modify storage evercraft:advantage gui_color set value "gold"
scoreboard players set #refresh_pres adv.temp 0
execute if score @s adv.culinary matches 25 if score @s adv.pres_culi matches ..2 run scoreboard players set #refresh_pres adv.temp 1
scoreboard players set #refresh_ready adv.temp 0
execute if score @s adv.culinary matches ..24 run function evercraft:advantage/calc/culinary
execute if score @s adv.culinary matches ..24 if score @s adv.xp_levels >= @s adv.req_xp if score @s adv.stat_cook >= @s adv.req_stat run scoreboard players set #refresh_ready adv.temp 1
function evercraft:advantage/gui/refresh_tree with storage evercraft:advantage
