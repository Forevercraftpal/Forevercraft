# Craftforever Codex — Delayed Item Restore
# consume_item fires before item removal — this runs 1 tick later to give item back

tag @s remove ec.cf_codex_restore

# Restore to correct hand via loot replace
execute if entity @s[tag=ec.cf_codex_main] run loot replace entity @s weapon.mainhand loot evercraft:craftforever/codex_item
execute unless entity @s[tag=ec.cf_codex_main] run loot replace entity @s weapon.offhand loot evercraft:craftforever/codex_item
tag @s remove ec.cf_codex_main
