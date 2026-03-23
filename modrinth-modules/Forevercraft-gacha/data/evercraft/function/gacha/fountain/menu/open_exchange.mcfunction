# Open Fountain Exchange page (page 2)
# Runs as @s = player with ec.InFountain tag
# Called from on_click_exchange — swaps page 1 elements for exchange buttons

# Kill page 1 elements (keep session alive)
execute as @e[tag=ec.FountainElement,distance=..20] if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run kill @s

# Tag player as on exchange page
tag @s add ec.InExchange

# Get fountain position for spawning
execute at @s run function evercraft:gacha/fountain/menu/spawn_exchange
