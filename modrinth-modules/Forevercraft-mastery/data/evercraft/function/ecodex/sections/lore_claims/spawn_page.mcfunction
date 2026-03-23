# Lore Claims — Spawn Current Page
# Routes to page_1..page_N based on ec.lr_page score
# Note: do NOT use "at @s" — it resets rotation, discarding facing-anchor context
execute if score @s ec.lr_page matches 0 run function evercraft:ecodex/sections/lore_claims/page_1
execute if score @s ec.lr_page matches 1 run function evercraft:ecodex/sections/lore_claims/page_2
execute if score @s ec.lr_page matches 2 run function evercraft:ecodex/sections/lore_claims/page_3
execute if score @s ec.lr_page matches 3 run function evercraft:ecodex/sections/lore_claims/page_4
execute if score @s ec.lr_page matches 4 run function evercraft:ecodex/sections/lore_claims/page_5
execute if score @s ec.lr_page matches 5 run function evercraft:ecodex/sections/lore_claims/page_6
execute if score @s ec.lr_page matches 6 run function evercraft:ecodex/sections/lore_claims/page_7
execute if score @s ec.lr_page matches 7 run function evercraft:ecodex/sections/lore_claims/page_8
execute if score @s ec.lr_page matches 8 run function evercraft:ecodex/sections/lore_claims/page_9
