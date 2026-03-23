# Classes — Resolve Slot to Artifact ID for Wishing Star / Lucid Claim (Macro)
# Macro arg: slot (0-13)
# Run as the player
# Reads cls_art_slots[slot] and cls_art_tiers[slot] from storage,
# then dispatches to item_click_dispatch which handles the selection mode

$data modify storage evercraft:codex_gui dispatch.clicked_art set from storage evercraft:codex_gui cls_art_slots[$(slot)]
$data modify storage evercraft:codex_gui dispatch.art_tier set from storage evercraft:codex_gui cls_art_tiers[$(slot)]

# Reuse the existing artifact click dispatch (has wishing star + lucid claim hooks)
function evercraft:codex/hub/artifacts/item_click_dispatch with storage evercraft:codex_gui dispatch
