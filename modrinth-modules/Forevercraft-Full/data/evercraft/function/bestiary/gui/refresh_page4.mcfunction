# Bestiary GUI — Refresh Page 4
# Updates text displays with current kill counts
# Run as the player

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_pillager
data modify storage evercraft:bestiary gui.name set value "Pillager"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_pillager
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 0
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_polarbr
data modify storage evercraft:bestiary gui.name set value "Polar Bear"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_polarbr
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 1
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_ravager
data modify storage evercraft:bestiary gui.name set value "Ravager"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_ravager
data modify storage evercraft:bestiary gui.threshold set value 500
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 2
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_shulker
data modify storage evercraft:bestiary gui.name set value "Shulker"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_shulker
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 3
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_silvrfsh
data modify storage evercraft:bestiary gui.name set value "Silverfish"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_silvrfsh
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 4
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_skeleton
data modify storage evercraft:bestiary gui.name set value "Skeleton"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_skeleton
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 5
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_slime
data modify storage evercraft:bestiary gui.name set value "Slime"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_slime
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 6
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_spider
data modify storage evercraft:bestiary gui.name set value "Spider"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_spider
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 7
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_stray
data modify storage evercraft:bestiary gui.name set value "Stray"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_stray
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 8
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_trllama
data modify storage evercraft:bestiary gui.name set value "Trader Llama"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_trllama
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 9
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_vex
data modify storage evercraft:bestiary gui.name set value "Vex"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_vex
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 10
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_vindctr
data modify storage evercraft:bestiary gui.name set value "Vindicator"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_vindctr
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 11
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_warden
data modify storage evercraft:bestiary gui.name set value "Warden"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_warden
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 12
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_witch
data modify storage evercraft:bestiary gui.name set value "Witch"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_witch
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 13
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_wither
data modify storage evercraft:bestiary gui.name set value "Wither"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_wither
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 14
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

