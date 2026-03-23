# Artifact Collection — Resolve Item Click (Macro)
# Macro arg: slot (0-19)
# Run as the player

# Copy the clicked artifact ID from storage array to dispatch compound
$data modify storage evercraft:codex_gui dispatch.clicked_art set from storage evercraft:codex_gui art_slots[$(slot)]

# Constellation view (cat=6): per-item tier from art_tiers array
$execute if score @s adv.gui_art_cat matches 6 run data modify storage evercraft:codex_gui dispatch.art_tier set from storage evercraft:codex_gui art_tiers[$(slot)]
# Normal view: single tier value for the whole page
execute unless score @s adv.gui_art_cat matches 6 run data modify storage evercraft:codex_gui dispatch.art_tier set from storage evercraft:codex_gui art_tier

# Dispatch to ability display
function evercraft:codex/hub/artifacts/item_click_dispatch with storage evercraft:codex_gui dispatch
