# === ETERNAL CODEX — RESTORE CONSUMED ITEM ===
# Restores to the same hand the player was holding it in
tag @s remove ec.ecodex_restore

execute if entity @s[tag=ec.ecodex_mainhand] run loot replace entity @s weapon.mainhand loot evercraft:ecodex/eternal_codex
execute unless entity @s[tag=ec.ecodex_mainhand] run loot replace entity @s weapon.offhand loot evercraft:ecodex/eternal_codex
tag @s remove ec.ecodex_mainhand
