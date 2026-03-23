# Codex — Per-player tick (OPT: consolidates 4 @a scans into 1)
# Run as: @a[scores={ec.codex_use=1..},tag=!Adv.InMenu] at @s

# Sneak + right-click codex → friend invite raycast
execute if predicate evercraft:companions/is_sneaking if items entity @s weapon.mainhand book[custom_data~{artifact_codex:true}] run function evercraft:friends/invite/raycast
execute if predicate evercraft:companions/is_sneaking if items entity @s weapon.offhand book[custom_data~{artifact_codex:true}] run function evercraft:friends/invite/raycast
# Reset use score for sneaking players so they don't also open the codex
execute if predicate evercraft:companions/is_sneaking run scoreboard players set @s ec.codex_use 0
execute if predicate evercraft:companions/is_sneaking run return 0

# Non-sneaking: open codex hub
execute if items entity @s weapon.mainhand book[custom_data~{artifact_codex:true}] run function evercraft:codex/hub/open
execute if items entity @s weapon.offhand book[custom_data~{artifact_codex:true}] run function evercraft:codex/hub/open
