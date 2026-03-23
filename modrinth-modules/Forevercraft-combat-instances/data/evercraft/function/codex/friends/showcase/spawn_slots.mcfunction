# Showcase — Spawn profile + equipment + 3 pin slots (self-view)
# Run as the player

# Kill any existing showcase GUI elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_gui_el,distance=..5]

# Tag session anchor for facing correction (prevents yaw shift on button click)
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp run tag @s add ec.sc_temp_anchor

# Spawn with corrected yaw (face toward anchor = original forward direction)
execute facing entity @e[tag=ec.sc_temp_anchor,limit=1] feet run function evercraft:codex/friends/showcase/spawn_slots_inner

# Cleanup
tag @e[tag=ec.sc_temp_anchor] remove ec.sc_temp_anchor
