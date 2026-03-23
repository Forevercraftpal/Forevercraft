# Codex of Everything teleport trigger handler
# Routes ec.codex_tp trigger values to teleport functions
# Run as player

execute if score @s ec.codex_tp matches 1 run function evercraft:artifacts/codex_tp/overworld
execute if score @s ec.codex_tp matches 2 run function evercraft:artifacts/codex_tp/nether
execute if score @s ec.codex_tp matches 3 run function evercraft:artifacts/codex_tp/end
