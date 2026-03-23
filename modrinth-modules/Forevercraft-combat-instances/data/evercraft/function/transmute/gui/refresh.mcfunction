# Artifact Transmutation GUI — Refresh display text
# Run as: player with TX.InMenu
# Updates: TX.Status, TX.Result, TX.Discount, TX.TransmuteTxt
# Session-filtered: only updates entities matching this player's gui_session

# Calculate required count (tier-variable + Artificer discount)
function evercraft:transmute/gui/calc_required

# Session filter — store player's session ID for entity matching
scoreboard players operation #gui_check ec.temp = @s adv.gui_session

# Write values to storage for macro use
execute store result storage evercraft:transmute temp.count int 1 run scoreboard players get @s tx.count
execute store result storage evercraft:transmute temp.required int 1 run scoreboard players get @s tx.required

# === STATUS LINE ===
# Empty state
execute if score @s tx.tier matches ..0 as @e[type=text_display,tag=TX.Status,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value {text:"Hold an artifact and click [Deposit] below.",color:"dark_gray"}

# With deposits — show count/required and tier name (macro for dynamic values)
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 1 run data modify storage evercraft:transmute temp.tier_name set value "Common"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 1 run data modify storage evercraft:transmute temp.tier_color set value "white"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 1 run data modify storage evercraft:transmute temp.next_name set value "Uncommon"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 1 run data modify storage evercraft:transmute temp.next_color set value "blue"

execute if score @s tx.tier matches 1.. if score @s tx.tier matches 2 run data modify storage evercraft:transmute temp.tier_name set value "Uncommon"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 2 run data modify storage evercraft:transmute temp.tier_color set value "blue"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 2 run data modify storage evercraft:transmute temp.next_name set value "Rare"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 2 run data modify storage evercraft:transmute temp.next_color set value "aqua"

execute if score @s tx.tier matches 1.. if score @s tx.tier matches 3 run data modify storage evercraft:transmute temp.tier_name set value "Rare"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 3 run data modify storage evercraft:transmute temp.tier_color set value "aqua"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 3 run data modify storage evercraft:transmute temp.next_name set value "Ornate"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 3 run data modify storage evercraft:transmute temp.next_color set value "dark_purple"

execute if score @s tx.tier matches 1.. if score @s tx.tier matches 4 run data modify storage evercraft:transmute temp.tier_name set value "Ornate"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 4 run data modify storage evercraft:transmute temp.tier_color set value "dark_purple"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 4 run data modify storage evercraft:transmute temp.next_name set value "Exquisite"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 4 run data modify storage evercraft:transmute temp.next_color set value "light_purple"

execute if score @s tx.tier matches 1.. if score @s tx.tier matches 5 run data modify storage evercraft:transmute temp.tier_name set value "Exquisite"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 5 run data modify storage evercraft:transmute temp.tier_color set value "light_purple"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 5 run data modify storage evercraft:transmute temp.next_name set value "Mythical"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 5 run data modify storage evercraft:transmute temp.next_color set value "gold"

execute if score @s tx.tier matches 1.. if score @s tx.tier matches 6 run data modify storage evercraft:transmute temp.tier_name set value "Mythical"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 6 run data modify storage evercraft:transmute temp.tier_color set value "gold"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 6 run data modify storage evercraft:transmute temp.next_name set value "Mythical"
execute if score @s tx.tier matches 1.. if score @s tx.tier matches 6 run data modify storage evercraft:transmute temp.next_color set value "gold"

# Call macro to set text with dynamic values (at @s ensures distance selectors work)
# Branch on tx.half for ".5" display
execute if score @s tx.tier matches 1.. if score @s tx.half matches 0 at @s run function evercraft:transmute/gui/refresh_status with storage evercraft:transmute temp
execute if score @s tx.tier matches 1.. if score @s tx.half matches 1 at @s run function evercraft:transmute/gui/refresh_status_half with storage evercraft:transmute temp

# === RESULT LINE ===
execute if score @s tx.tier matches ..0 as @e[type=text_display,tag=TX.Result,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value {text:""}

# === DISCOUNT LINE ===
# Mythical tier — no discount available
execute if score @s tx.tier matches 6 as @e[type=text_display,tag=TX.Discount,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value {text:"Mythical reroll — no discount available.",color:"dark_gray"}
# Artificer nearby + discount available
execute unless score @s tx.tier matches 6 if entity @e[type=minecraft:villager,tag=more_professions_artificer,distance=..12,limit=1] if score @s tx.has_disc matches 1 as @e[type=text_display,tag=TX.Discount,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"Artificer nearby! ",color:"green"},{text:"Cost reduced by 1. ",color:"dark_green"},{text:"(1/day)",color:"gray"}]
# Artificer nearby + discount already used today
execute unless score @s tx.tier matches 6 if entity @e[type=minecraft:villager,tag=more_professions_artificer,distance=..12,limit=1] if score @s tx.has_disc matches 0 as @e[type=text_display,tag=TX.Discount,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"Artificer nearby. ",color:"gray"},{text:"Discount used today.",color:"dark_gray"}]
# No Artificer nearby
execute unless score @s tx.tier matches 6 unless entity @e[type=minecraft:villager,tag=more_professions_artificer,distance=..12,limit=1] as @e[type=text_display,tag=TX.Discount,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"No Artificer nearby.",color:"dark_gray"}]

# === TRANSMUTE BUTTON COLOR ===
execute store result score #tx_ready tx.temp if score @s tx.count >= @s tx.required
execute if score #tx_ready tx.temp matches 0 as @e[type=text_display,tag=TX.TransmuteTxt,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"[ ",color:"dark_gray"},{text:"Transmute!",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute if score #tx_ready tx.temp matches 1 as @e[type=text_display,tag=TX.TransmuteTxt,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"[ ",color:"dark_gray"},{text:"Transmute!",color:"green",bold:true},{text:" ]",color:"dark_gray"}]

# === DEPOSIT BUTTON ===
execute if score @s tx.count >= @s tx.required as @e[type=text_display,tag=TX.DepositTxt,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"[ ",color:"dark_gray"},{text:"Slots Full",color:"gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s tx.count >= @s tx.required as @e[type=text_display,tag=TX.DepositTxt,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{text:"[ ",color:"dark_gray"},{text:"Deposit Held Artifact",color:"yellow",bold:true},{text:" ]",color:"dark_gray"}]
