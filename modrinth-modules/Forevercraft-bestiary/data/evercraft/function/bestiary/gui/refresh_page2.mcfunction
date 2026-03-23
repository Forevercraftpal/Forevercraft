# Bestiary GUI — Refresh Page 2
# Updates text displays with current kill counts
# Run as the player

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_bee
data modify storage evercraft:bestiary gui.name set value "Bee"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_bee
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 0
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_blaze
data modify storage evercraft:bestiary gui.name set value "Blaze"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_blaze
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 1
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_bogged
data modify storage evercraft:bestiary gui.name set value "Bogged"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_bogged
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 2
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_breeze
data modify storage evercraft:bestiary gui.name set value "Breeze"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_breeze
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 3
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_camhusk
data modify storage evercraft:bestiary gui.name set value "Camel Husk"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_camhusk
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 4
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_cavespdr
data modify storage evercraft:bestiary gui.name set value "Cave Spider"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_cavespdr
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 5
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_creaking
data modify storage evercraft:bestiary gui.name set value "Creaking"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_creaking
data modify storage evercraft:bestiary gui.threshold set value 1
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 6
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_creeper
data modify storage evercraft:bestiary gui.name set value "Creeper"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_creeper
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 7
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_dolphin
data modify storage evercraft:bestiary gui.name set value "Dolphin"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_dolphin
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 8
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_drowned
data modify storage evercraft:bestiary gui.name set value "Drowned"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_drowned
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 9
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_e_guard
data modify storage evercraft:bestiary gui.name set value "Elder Guardian"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_e_guard
data modify storage evercraft:bestiary gui.threshold set value 500
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 10
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_enderman
data modify storage evercraft:bestiary gui.name set value "Enderman"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_enderman
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 11
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_endmite
data modify storage evercraft:bestiary gui.name set value "Endermite"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_endmite
data modify storage evercraft:bestiary gui.threshold set value 5000
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 12
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_edragon
data modify storage evercraft:bestiary gui.name set value "Ender Dragon"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_edragon
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 13
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_evoker
data modify storage evercraft:bestiary gui.name set value "Evoker"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_evoker
data modify storage evercraft:bestiary gui.threshold set value 500
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 14
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

