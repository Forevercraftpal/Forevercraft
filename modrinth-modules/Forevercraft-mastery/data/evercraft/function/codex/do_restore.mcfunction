# Codex — Delayed Item Restore
# consume_item fires before item removal — this runs 1 tick later to give item back
# Restores to the same hand the player was holding it in

tag @s remove ec.codex_restore

# Restore to correct hand via loot replace
execute if entity @s[tag=ec.codex_mainhand] run loot replace entity @s weapon.mainhand loot evercraft:items/artifact_codex_item
execute unless entity @s[tag=ec.codex_mainhand] run loot replace entity @s weapon.offhand loot evercraft:items/artifact_codex_item
tag @s remove ec.codex_mainhand
