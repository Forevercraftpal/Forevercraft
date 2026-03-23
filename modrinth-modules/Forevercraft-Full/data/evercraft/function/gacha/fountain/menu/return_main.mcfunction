# Return from exchange page to main fountain menu
# Runs as @s = player with ec.InFountain + ec.InExchange

# Kill exchange page elements
execute as @e[tag=ec.ExchangeElement,distance=..20] if score @s adv.gui_session = @p[tag=ec.InFountain,distance=..20] adv.gui_session run kill @s

# Remove exchange tag
tag @s remove ec.InExchange

# Re-open main menu (remove InFountain first so open doesn't toggle-close)
tag @s remove ec.InFountain
execute at @s run function evercraft:gacha/fountain/menu/open
