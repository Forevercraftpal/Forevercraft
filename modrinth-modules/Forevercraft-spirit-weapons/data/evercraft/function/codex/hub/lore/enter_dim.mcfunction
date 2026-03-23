# Lore — Enter Dimension (Macro)
# Macro arg: dim (0=OW, 1=Nether, 2=End, 3=Lore)
# Run as the player, at player, facing the anchor

# Store selected dimension
$scoreboard players set @s adv.gui_lore_dim $(dim)

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill dimension picker content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreDimPick,distance=..5]

# Lore Pages (dim 3) skips sub-category — goes straight to set list
execute if score @s adv.gui_lore_dim matches 3 run scoreboard players set @s adv.gui_lore_subcat 4
execute if score @s adv.gui_lore_dim matches 3 run scoreboard players set @s adv.gui_page 3
execute if score @s adv.gui_lore_dim matches 3 run function evercraft:codex/hub/lore/spawn_set_list
execute if score @s adv.gui_lore_dim matches 3 run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
execute if score @s adv.gui_lore_dim matches 3 run return 0

# OW/Nether/End → show sub-category picker
scoreboard players set @s adv.gui_page 2
function evercraft:codex/hub/lore/spawn_subcats
