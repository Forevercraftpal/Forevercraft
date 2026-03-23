# Lore Exchange — Refresh display text
# Run as: player with exchange GUI open
# Updates: LoreExStatus, LoreExResult, LoreExExchangeTxt, LoreExDepositTxt

# Write values to storage for macro use
execute store result storage evercraft:lore_exchange temp.count int 1 run scoreboard players get @s lx.count
execute store result storage evercraft:lore_exchange temp.required int 1 run scoreboard players get @s lx.required
execute store result storage evercraft:lore_exchange temp.reward int 1 run scoreboard players get @s lx.reward

# === STATUS LINE ===
# Empty state
execute if score @s lx.count matches 0 at @s run data modify entity @e[type=text_display,tag=Adv.LoreExStatus,distance=..5,limit=1] text set value {text:"Hold a lore piece and click [Deposit] below.",color:"dark_gray"}

# With deposits — set tier name/color for macro
execute if score @s lx.count matches 1.. if score @s lx.tier matches 1 run data modify storage evercraft:lore_exchange temp.tier_name set value "Common"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 1 run data modify storage evercraft:lore_exchange temp.tier_color set value "white"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 2 run data modify storage evercraft:lore_exchange temp.tier_name set value "Uncommon"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 2 run data modify storage evercraft:lore_exchange temp.tier_color set value "green"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 3 run data modify storage evercraft:lore_exchange temp.tier_name set value "Rare"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 3 run data modify storage evercraft:lore_exchange temp.tier_color set value "aqua"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 4 run data modify storage evercraft:lore_exchange temp.tier_name set value "Ornate"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 4 run data modify storage evercraft:lore_exchange temp.tier_color set value "dark_purple"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 5 run data modify storage evercraft:lore_exchange temp.tier_name set value "Exquisite"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 5 run data modify storage evercraft:lore_exchange temp.tier_color set value "light_purple"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 6 run data modify storage evercraft:lore_exchange temp.tier_name set value "Mythical"
execute if score @s lx.count matches 1.. if score @s lx.tier matches 6 run data modify storage evercraft:lore_exchange temp.tier_color set value "gold"

# Call macro to set dynamic status text
execute if score @s lx.count matches 1.. at @s run function evercraft:codex/hub/lore/exchange/refresh_status with storage evercraft:lore_exchange temp

# === RESULT LINE ===
execute if score @s lx.count matches 0 at @s run data modify entity @e[type=text_display,tag=Adv.LoreExResult,distance=..5,limit=1] text set value {text:""}
execute if score @s lx.count matches 1.. at @s run function evercraft:codex/hub/lore/exchange/refresh_result with storage evercraft:lore_exchange temp

# === EXCHANGE BUTTON COLOR ===
execute store result score #lx_ready lx.temp if score @s lx.count >= @s lx.required
execute if score #lx_ready lx.temp matches 0 at @s run data modify entity @e[type=text_display,tag=Adv.LoreExExchangeTxt,distance=..5,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Exchange!",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute if score #lx_ready lx.temp matches 1 at @s run data modify entity @e[type=text_display,tag=Adv.LoreExExchangeTxt,distance=..5,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Exchange!",color:"green",bold:true},{text:" ]",color:"dark_gray"}]

# === DEPOSIT BUTTON ===
execute if score @s lx.count >= @s lx.required at @s run data modify entity @e[type=text_display,tag=Adv.LoreExDepositTxt,distance=..5,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Slots Full",color:"gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s lx.count >= @s lx.required at @s run data modify entity @e[type=text_display,tag=Adv.LoreExDepositTxt,distance=..5,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Deposit Held Piece",color:"yellow",bold:true},{text:" ]",color:"dark_gray"}]
