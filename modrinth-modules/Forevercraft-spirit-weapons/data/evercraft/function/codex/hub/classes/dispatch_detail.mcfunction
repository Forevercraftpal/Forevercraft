# Classes — Dispatch Artifact Detail (Macro)
# Macro arg: slot (0-12)
# Run as the player
# Routes to the correct per-class detail function based on adv.gui_cls_id

# Wishing Star / Lucid Claim mode — redirect to selection handler instead of info display
$execute if entity @s[tag=ec.wishing_star_active] run function evercraft:codex/hub/classes/cls_select_resolve {slot:$(slot)}
execute if entity @s[tag=ec.wishing_star_active] run return 0
$execute if entity @s[tag=ec.lucid_claim_active] run function evercraft:codex/hub/classes/cls_select_resolve {slot:$(slot)}
execute if entity @s[tag=ec.lucid_claim_active] run return 0

# Classes that share artifact sets route to the same detail function:
# 5 (Sentinel) → 4 (Striker), 9 (Hoplite) → 8 (Javelin), 13 (Knight) → 12 (Tank)
$execute if score @s adv.gui_cls_id matches 1 run function evercraft:codex/hub/classes/detail/rogue {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 2 run function evercraft:codex/hub/classes/detail/berserker {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 3 run function evercraft:codex/hub/classes/detail/dancer {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 4..5 run function evercraft:codex/hub/classes/detail/striker {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 6 run function evercraft:codex/hub/classes/detail/healer {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 7 run function evercraft:codex/hub/classes/detail/beastlord {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 8..9 run function evercraft:codex/hub/classes/detail/javelin {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 10 run function evercraft:codex/hub/classes/detail/archer {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 11 run function evercraft:codex/hub/classes/detail/hunter {slot:$(slot)}
$execute if score @s adv.gui_cls_id matches 12..13 run function evercraft:codex/hub/classes/detail/tank {slot:$(slot)}

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
