# Showcase — Spawn read-only view of another player's showcase (macro)
# $(target_cid) for name selector
# Reads temp.pins for pin data

# Kill any existing showcase GUI elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_gui_el,distance=..5]

# Tag session anchor for facing correction
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp run tag @s add ec.sc_temp_anchor

# Spawn with corrected yaw
$execute facing entity @e[tag=ec.sc_temp_anchor,limit=1] feet run function evercraft:codex/friends/showcase/spawn_other_slots_inner {target_cid:$(target_cid)}

# Cleanup
tag @e[tag=ec.sc_temp_anchor] remove ec.sc_temp_anchor
