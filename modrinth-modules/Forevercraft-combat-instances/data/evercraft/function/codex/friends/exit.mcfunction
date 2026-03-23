# Codex Friends — Exit (cleanup when leaving section 12)
# Called from back_to_hub or codex close

tag @s remove ec.fr_detail_view
scoreboard players set @s ec.fr_target 0
scoreboard players set @s ec.fr_page 1

# Clean up showcase state if active
execute if entity @s[tag=ec.sc_in_showcase] run function evercraft:codex/friends/showcase/exit
