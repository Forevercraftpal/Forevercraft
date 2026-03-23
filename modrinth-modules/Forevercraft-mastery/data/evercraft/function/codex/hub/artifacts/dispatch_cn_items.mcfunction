# Artifact Collection — Dispatch Constellation Items
# Routes adv.gui_art_tier (1-10) to correct constellation item list
# Run as the player, at player, facing anchor

execute if score @s adv.gui_art_tier matches 1 run function evercraft:codex/hub/artifacts/items/cn_tide
execute if score @s adv.gui_art_tier matches 2 run function evercraft:codex/hub/artifacts/items/cn_pyre
execute if score @s adv.gui_art_tier matches 3 run function evercraft:codex/hub/artifacts/items/cn_verdant
execute if score @s adv.gui_art_tier matches 4 run function evercraft:codex/hub/artifacts/items/cn_frozen
execute if score @s adv.gui_art_tier matches 5 run function evercraft:codex/hub/artifacts/items/cn_earth
execute if score @s adv.gui_art_tier matches 6 run function evercraft:codex/hub/artifacts/items/cn_star
execute if score @s adv.gui_art_tier matches 7 run function evercraft:codex/hub/artifacts/items/cn_shadow
execute if score @s adv.gui_art_tier matches 8 run function evercraft:codex/hub/artifacts/items/cn_dune
execute if score @s adv.gui_art_tier matches 9 run function evercraft:codex/hub/artifacts/items/cn_storm
execute if score @s adv.gui_art_tier matches 10 run function evercraft:codex/hub/artifacts/items/cn_soul
