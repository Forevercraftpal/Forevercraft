# ============================================================
# House Key — Restore item + open menu (1 tick after consume)
# Run as: player, at player
# ============================================================
tag @s remove HS.SatchelRestore

# Restore the consumed key item
function evercraft:housing/satchel/give

# Must have a home
execute unless score @s hs.tier matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need a Hearthstone to use this.",color:"red"}]

# Close any existing menu first
execute if entity @s[tag=HS.InMenu] run function evercraft:housing/gui/close
execute if entity @s[tag=HS.InSatchel] run function evercraft:housing/satchel/gui/close

# Open satchel menu
function evercraft:housing/satchel/gui/open
