# Bestiary GUI — Refresh Page 5
# Updates text displays with current kill counts
# Run as the player

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_withskel
data modify storage evercraft:bestiary gui.name set value "Wither Skeleton"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_withskel
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 0
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_wolf
data modify storage evercraft:bestiary gui.name set value "Wolf"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_wolf
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 1
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_zoglin
data modify storage evercraft:bestiary gui.name set value "Zoglin"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_zoglin
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 2
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_zombie
data modify storage evercraft:bestiary gui.name set value "Zombie"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_zombie
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 3
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_zombhrs
data modify storage evercraft:bestiary gui.name set value "Zombie Horse"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_zombhrs
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 4
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_znautls
data modify storage evercraft:bestiary gui.name set value "Zombie Nautilus"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_znautls
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 5
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_zombvill
data modify storage evercraft:bestiary gui.name set value "Zombie Villager"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_zombvill
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 6
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_zombpig
data modify storage evercraft:bestiary gui.name set value "Zombified Piglin"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_zombpig
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 7
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

