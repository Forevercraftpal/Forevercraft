# Showcase — Spawn picker UI (wrapper with facing fix)
# Run as the player

# Find anchor for facing correction
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp run tag @s add ec.sc_temp_anchor

# Spawn with corrected yaw
execute facing entity @e[tag=ec.sc_temp_anchor,limit=1] feet run function evercraft:codex/friends/showcase/spawn_picker_inner

# Cleanup
tag @e[tag=ec.sc_temp_anchor] remove ec.sc_temp_anchor
