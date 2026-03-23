# The Leviathan — Sponge Placed (runs as sponge slot interaction entity)
# Determine if this is a valid slot or a trap slot

# Clear the click
data remove entity @s interaction

# Mark as used (prevent re-clicking)
tag @s add ec.rd_lv_sponge_used

# Route based on slot type
execute if entity @s[tag=ec.rd_lv_sponge_valid] run function evercraft:raids/boss/leviathan/puzzle/sponge_valid
execute if entity @s[tag=ec.rd_lv_sponge_trap] run function evercraft:raids/boss/leviathan/puzzle/sponge_trap
