# Refresh respec overlay tree displays with current levels
# Shows tree name + level in red — trees at Lv.0 shown as gray (nothing to respec)
# Run as the player

# Agility (slot 0)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.agility
data modify storage evercraft:advantage gui_slot set value 0
data modify storage evercraft:advantage gui_name set value "Agility"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Dexterity (slot 1)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.dexterity
data modify storage evercraft:advantage gui_slot set value 1
data modify storage evercraft:advantage gui_name set value "Dexterity"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Evasion (slot 2)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.evasion
data modify storage evercraft:advantage gui_slot set value 2
data modify storage evercraft:advantage gui_name set value "Evasion"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Stealth (slot 3)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.stealth
data modify storage evercraft:advantage gui_slot set value 3
data modify storage evercraft:advantage gui_name set value "Stealth"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Vitality (slot 4)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.vitality
data modify storage evercraft:advantage gui_slot set value 4
data modify storage evercraft:advantage gui_name set value "Vitality"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Taskmaster (slot 5)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.taskmaster
data modify storage evercraft:advantage gui_slot set value 5
data modify storage evercraft:advantage gui_name set value "Taskmaster"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Beastmaster (slot 6)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.beastmaster
data modify storage evercraft:advantage gui_slot set value 6
data modify storage evercraft:advantage gui_name set value "Beastmaster"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Victorian (slot 7)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.victorian
data modify storage evercraft:advantage gui_slot set value 7
data modify storage evercraft:advantage gui_name set value "Victorian"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Fishing (slot 8)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.fishing
data modify storage evercraft:advantage gui_slot set value 8
data modify storage evercraft:advantage gui_name set value "Fishing"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Mining (slot 9)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.mining
data modify storage evercraft:advantage gui_slot set value 9
data modify storage evercraft:advantage gui_name set value "Mining"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Gathering (slot 10)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.gathering
data modify storage evercraft:advantage gui_slot set value 10
data modify storage evercraft:advantage gui_name set value "Gathering"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Blacksmith (slot 11)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.blacksmith
data modify storage evercraft:advantage gui_slot set value 11
data modify storage evercraft:advantage gui_name set value "Blacksmith"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Explorer (slot 12)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.explorer
data modify storage evercraft:advantage gui_slot set value 12
data modify storage evercraft:advantage gui_name set value "Explorer"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage

# Culinary (slot 13)
execute store result storage evercraft:advantage gui_level int 1 store result score #refresh_level adv.temp run scoreboard players get @s adv.culinary
data modify storage evercraft:advantage gui_slot set value 13
data modify storage evercraft:advantage gui_name set value "Culinary"
function evercraft:advantage/gui/refresh_respec_tree with storage evercraft:advantage
