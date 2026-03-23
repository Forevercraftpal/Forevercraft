# Dungeon Lockout — Notify player that a structure's cooldown expired
# Run as: player. #dg_struct_id must be set before calling.

function evercraft:dungeon/lockout/get_name
function evercraft:dungeon/lockout/expired_notify_macro with storage evercraft:dungeon lockout
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.8 1.2
