# ============================================================
# Laborers Sub-Menu — Refresh display
# Run as: player with HS.InLaborers, at player
# Updates: HS.LbSlots, HS.LbActive1-5, hire button colors
# ============================================================

# === SLOTS LINE ===
# Count active laborers near the hearthstone (within home zone)
execute store result score #lb_count ec.temp if entity @e[type=villager,tag=ec.laborer,distance=..64]
scoreboard players operation @s ec.lb_count = #lb_count ec.temp

# Store for macro
execute store result storage evercraft:lb_temp count int 1 run scoreboard players get @s ec.lb_count
execute store result storage evercraft:lb_temp max int 1 run scoreboard players get @s ec.lb_max
function evercraft:housing/laborers/set_slots_display with storage evercraft:lb_temp

# === ACTIVE LABORER LINES ===
# Reset all 5 lines to empty
data modify entity @e[type=text_display,tag=HS.LbActive1,distance=..7,limit=1] text set value {text:"",color:"gray"}
data modify entity @e[type=text_display,tag=HS.LbActive2,distance=..7,limit=1] text set value {text:"",color:"gray"}
data modify entity @e[type=text_display,tag=HS.LbActive3,distance=..7,limit=1] text set value {text:"",color:"gray"}
data modify entity @e[type=text_display,tag=HS.LbActive4,distance=..7,limit=1] text set value {text:"",color:"gray"}
data modify entity @e[type=text_display,tag=HS.LbActive5,distance=..7,limit=1] text set value {text:"",color:"gray"}

# Populate active laborer lines (slot 0-4)
scoreboard players set #lb_line ec.temp 0
execute as @e[type=villager,tag=ec.laborer,distance=..64,sort=nearest,limit=5] run function evercraft:housing/laborers/show_active_line

# === HIRE BUTTON AVAILABILITY ===
# Gray out buttons if: no slots available, rank too low, or can't afford

# Check if at max capacity
execute if score @s ec.lb_count >= @s ec.lb_max run data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value {text:"All laborer slots filled!",color:"yellow"}
execute unless score @s ec.lb_count >= @s ec.lb_max run data modify entity @e[type=text_display,tag=HS.LbStatus,distance=..7,limit=1] text set value {text:"",color:"gray"}

# Rank-lock display for higher-tier laborers
execute unless score @s ec.cf_rank matches 10.. run data modify entity @e[type=text_display,tag=HS.LbHireMiner,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"\u26cf Miner",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s ec.cf_rank matches 10.. run data modify entity @e[type=text_display,tag=HS.LbHireFarmer,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"\u2618 Farmer",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s ec.cf_rank matches 10.. run data modify entity @e[type=text_display,tag=HS.LbHireFisher,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"\u2693 Fisher",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s ec.cf_rank matches 20.. run data modify entity @e[type=text_display,tag=HS.LbHireWoodcutter,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"\u2694 Woodcutter",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s ec.cf_rank matches 20.. run data modify entity @e[type=text_display,tag=HS.LbHireForager,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"\u2767 Forager",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
execute unless score @s ec.cf_rank matches 50.. run data modify entity @e[type=text_display,tag=HS.LbHireProspector,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"\u2737 Prospector",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
