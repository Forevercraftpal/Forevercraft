# The Eternal Pharaoh — Hieroglyphic Sequence Puzzle
# Boss glows a color every 30 seconds — hit matching pillar within 5 seconds
# Correct: boss 75% DR removed for 10 seconds
# Wrong: sand trap (Slowness V + Blindness 3s)

# ── Boss Glow Phase (every 600 ticks / 30 seconds) ──
execute if score #rd_ep_glow_cd ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_glow

# ── Active glow window: check pillar clicks (5-second window = 100 ticks) ──
execute if score #rd_ep_glow_cd ec.var matches 500..599 as @e[tag=ec.rd_ep_pillar] at @s if data entity @s interaction run function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_check
