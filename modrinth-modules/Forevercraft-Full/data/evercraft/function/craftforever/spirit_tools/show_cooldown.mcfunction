# Spirit Tools — Show cooldown on actionbar
# Run as: player with ec.st_held and ec.st_cd > 0
title @s actionbar [{"text":"Mastery ","color":"gray"},{"text":"[","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.st_cd"},"color":"gold"},{"text":" ticks]","color":"dark_gray"}]
