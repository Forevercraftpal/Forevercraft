# Bestiary GUI — Refresh Page 3
# Updates text displays with current kill counts
# Run as the player

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_fox
data modify storage evercraft:bestiary gui.name set value "Fox"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_fox
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 0
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_ghast
data modify storage evercraft:bestiary gui.name set value "Ghast"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_ghast
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 1
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_goat
data modify storage evercraft:bestiary gui.name set value "Goat"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_goat
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 2
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_guardian
data modify storage evercraft:bestiary gui.name set value "Guardian"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_guardian
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 3
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_hoglin
data modify storage evercraft:bestiary gui.name set value "Hoglin"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_hoglin
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 4
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_husk
data modify storage evercraft:bestiary gui.name set value "Husk"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_husk
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 5
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_ironglm
data modify storage evercraft:bestiary gui.name set value "Iron Golem"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_ironglm
data modify storage evercraft:bestiary gui.threshold set value 500
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 6
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_llama
data modify storage evercraft:bestiary gui.name set value "Llama"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_llama
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 7
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_magcube
data modify storage evercraft:bestiary gui.name set value "Magma Cube"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_magcube
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 8
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_panda
data modify storage evercraft:bestiary gui.name set value "Panda"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_panda
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 9
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_parched
data modify storage evercraft:bestiary gui.name set value "Parched"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_parched
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 10
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_phantom
data modify storage evercraft:bestiary gui.name set value "Phantom"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_phantom
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 11
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_piglin
data modify storage evercraft:bestiary gui.name set value "Piglin"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_piglin
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 12
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_pigbrute
data modify storage evercraft:bestiary gui.name set value "Piglin Brute"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_pigbrute
data modify storage evercraft:bestiary gui.threshold set value 500
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 13
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

