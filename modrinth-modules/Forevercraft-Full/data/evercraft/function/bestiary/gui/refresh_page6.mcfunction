# Bestiary GUI — Refresh Page 6 (World Bosses)
# Updates text displays with current kill counts
# Run as the player

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_hollking
data modify storage evercraft:bestiary gui.name set value "The Hollow King"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_hollking
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 0
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_verdwrdn
data modify storage evercraft:bestiary gui.name set value "The Verdant Warden"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_verdwrdn
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 1
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_stormfrg
data modify storage evercraft:bestiary gui.name set value "The Stormforged"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_stormfrg
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 2
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_tidecllr
data modify storage evercraft:bestiary gui.name set value "The Tidecaller"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_tidecllr
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 3
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_erthshkr
data modify storage evercraft:bestiary gui.name set value "The Earthshaker"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_erthshkr
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 4
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_nightmre
data modify storage evercraft:bestiary gui.name set value "The Nightmare"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_nightmre
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 5
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_inftitan
data modify storage evercraft:bestiary gui.name set value "The Infernal Titan"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_inftitan
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 6
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_soulwrdn
data modify storage evercraft:bestiary gui.name set value "The Soul Warden"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_soulwrdn
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 7
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_crimbhmt
data modify storage evercraft:bestiary gui.name set value "The Crimson Behemoth"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_crimbhmt
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 8
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_voidsovr
data modify storage evercraft:bestiary gui.name set value "The Void Sovereign"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_voidsovr
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 9
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_endrarch
data modify storage evercraft:bestiary gui.name set value "The Ender Architect"
execute store result storage evercraft:bestiary gui.kills int 1 run scoreboard players get @s bs.k_endrarch
data modify storage evercraft:bestiary gui.threshold set value 100
data modify storage evercraft:bestiary gui.color set value "white"
data modify storage evercraft:bestiary gui.row set value 10
function evercraft:bestiary/gui/render_row with storage evercraft:bestiary gui

