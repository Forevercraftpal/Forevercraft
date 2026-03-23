# Showcase — Equipment click handler
# @s = interaction entity that was clicked
# Finds the matching item_display by slot tag and shows item info to player

data remove entity @s interaction

# Determine which slot was clicked and show item info
execute if entity @s[tag=ec.sc_eq_click_0] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_0",label:"Weapon"}
execute if entity @s[tag=ec.sc_eq_click_1] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_1",label:"Helmet"}
execute if entity @s[tag=ec.sc_eq_click_2] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_2",label:"Chestplate"}
execute if entity @s[tag=ec.sc_eq_click_3] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_3",label:"Leggings"}
execute if entity @s[tag=ec.sc_eq_click_4] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_4",label:"Boots"}
execute if entity @s[tag=ec.sc_eq_click_5] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_5",label:"Offhand"}
execute if entity @s[tag=ec.sc_eq_click_6] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_6",label:"Pickaxe"}
execute if entity @s[tag=ec.sc_eq_click_7] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_eq_7",label:"Shovel"}
execute if entity @s[tag=ec.sc_pet_click] as @a[tag=ec.sc_in_showcase,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/friends/showcase/show_eq_info {slot:"ec.sc_pet_item",label:"Companion"}
