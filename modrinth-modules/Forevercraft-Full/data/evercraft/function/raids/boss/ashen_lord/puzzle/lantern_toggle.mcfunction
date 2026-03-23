# The Ashen Lord — Toggle Soul Lantern
# Called as the lantern interaction entity that was clicked

# Clear the interaction data
data remove entity @s interaction

# Toggle: if off → on, if on → off
execute if entity @s[tag=ec.rd_al_lantern_off] run function evercraft:raids/boss/ashen_lord/puzzle/lantern_light
execute if entity @s[tag=ec.rd_al_lantern_on] unless entity @s[tag=ec.rd_al_lantern_just_lit] run function evercraft:raids/boss/ashen_lord/puzzle/lantern_extinguish

# Clear just-lit flag (prevents immediate re-toggle in same tick)
tag @s remove ec.rd_al_lantern_just_lit
