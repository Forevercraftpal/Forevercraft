# The Eternal Pharaoh — Check Pillar Hit
# Called as the pillar interaction entity that was clicked
# Compare pillar number to glow color

# Clear interaction
data remove entity @s interaction

# Check if this pillar matches the glow color
# Pillar 1 (red) = color 1, Pillar 2 (blue) = color 2, etc.
execute if entity @s[tag=ec.rd_ep_pillar1] if score #rd_ep_glow_color ec.var matches 1 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_correct
execute if entity @s[tag=ec.rd_ep_pillar2] if score #rd_ep_glow_color ec.var matches 2 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_correct
execute if entity @s[tag=ec.rd_ep_pillar3] if score #rd_ep_glow_color ec.var matches 3 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_correct
execute if entity @s[tag=ec.rd_ep_pillar4] if score #rd_ep_glow_color ec.var matches 4 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_correct

# Wrong pillar: sand trap
execute if entity @s[tag=ec.rd_ep_pillar1] unless score #rd_ep_glow_color ec.var matches 1 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_wrong
execute if entity @s[tag=ec.rd_ep_pillar2] unless score #rd_ep_glow_color ec.var matches 2 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_wrong
execute if entity @s[tag=ec.rd_ep_pillar3] unless score #rd_ep_glow_color ec.var matches 3 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_wrong
execute if entity @s[tag=ec.rd_ep_pillar4] unless score #rd_ep_glow_color ec.var matches 4 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_wrong

# Reset glow (prevent double-trigger)
scoreboard players set #rd_ep_glow_color ec.var 0
scoreboard players set #rd_ep_glow_cd ec.var 600
