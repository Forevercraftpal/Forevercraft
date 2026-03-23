# ============================================================
# Hearthstone GUI — Refresh display text
# Run as: player with HS.InMenu
# Updates: HS.Tier, HS.Buffs, HS.Next, HS.Cost, HS.UpgradeTxt
# ============================================================

# Safety: if tier is somehow 0, try to recover from marker data
execute if score @s hs.tier matches ..0 at @s store result score @s hs.tier run data get entity @e[type=marker,tag=HS.Marker,distance=..5,limit=1] data.owner_tier
execute if score @s hs.tier matches ..0 run data modify entity @e[type=text_display,tag=HS.Tier,distance=..7,limit=1] text set value {text:"Error: tier unknown",color:"red"}
execute if score @s hs.tier matches ..0 run return 0

# === TIER LINE ===
execute if score @s hs.tier matches 1 run data modify entity @e[type=text_display,tag=HS.Tier,distance=..7,limit=1] text set value [{text:"Tier 1: ",color:"gray"},{text:"Settler",color:"yellow"}]
execute if score @s hs.tier matches 2 run data modify entity @e[type=text_display,tag=HS.Tier,distance=..7,limit=1] text set value [{text:"Tier 2: ",color:"gray"},{text:"Homestead",color:"yellow"}]
execute if score @s hs.tier matches 3 run data modify entity @e[type=text_display,tag=HS.Tier,distance=..7,limit=1] text set value [{text:"Tier 3: ",color:"gray"},{text:"Estate",color:"aqua"}]
execute if score @s hs.tier matches 4 run data modify entity @e[type=text_display,tag=HS.Tier,distance=..7,limit=1] text set value [{text:"Tier 4: ",color:"gray"},{text:"Manor",color:"light_purple"}]
execute if score @s hs.tier matches 5 run data modify entity @e[type=text_display,tag=HS.Tier,distance=..7,limit=1] text set value [{text:"Tier 5: ",color:"gray"},{text:"Sanctuary",color:"gold",bold:true}]

# === BUFFS LINE (current tier buffs) ===
execute if score @s hs.tier matches 1 run data modify entity @e[type=text_display,tag=HS.Buffs,distance=..7,limit=1] text set value [{text:"Buffs: ",color:"dark_gray"},{text:"Regeneration I",color:"green"}]
execute if score @s hs.tier matches 2 run data modify entity @e[type=text_display,tag=HS.Buffs,distance=..7,limit=1] text set value [{text:"Buffs: ",color:"dark_gray"},{text:"Regeneration I",color:"green"},{text:", ",color:"dark_gray"},{text:"Saturation",color:"dark_green"}]
execute if score @s hs.tier matches 3 run data modify entity @e[type=text_display,tag=HS.Buffs,distance=..7,limit=1] text set value [{text:"Buffs: ",color:"dark_gray"},{text:"Regen I",color:"green"},{text:", ",color:"dark_gray"},{text:"Saturation",color:"dark_green"},{text:", ",color:"dark_gray"},{text:"DR +0.5",color:"gold"}]
execute if score @s hs.tier matches 4 run data modify entity @e[type=text_display,tag=HS.Buffs,distance=..7,limit=1] text set value [{text:"Buffs: ",color:"dark_gray"},{text:"Regen I",color:"green"},{text:", ",color:"dark_gray"},{text:"Saturation",color:"dark_green"},{text:", ",color:"dark_gray"},{text:"DR +0.5",color:"gold"},{text:", ",color:"dark_gray"},{text:"Fire Res",color:"yellow"}]
execute if score @s hs.tier matches 5 run data modify entity @e[type=text_display,tag=HS.Buffs,distance=..7,limit=1] text set value [{text:"Buffs: ",color:"dark_gray"},{text:"Regen",color:"green"},{text:", ",color:"dark_gray"},{text:"Saturation",color:"dark_green"},{text:", ",color:"dark_gray"},{text:"DR +1.0",color:"gold"},{text:", ",color:"dark_gray"},{text:"Fire Res",color:"yellow"},{text:", ",color:"dark_gray"},{text:"Resistance I",color:"dark_purple"}]

# === DECORATION SCORE ===
# Store score to storage for macro display
execute store result storage evercraft:housing temp.decor_score int 1 run scoreboard players get @s hs.decor

# Determine decoration rank
execute if score @s hs.decor matches ..0 run data modify entity @e[type=text_display,tag=HS.Decor,distance=..7,limit=1] text set value [{text:"Comfort: ",color:"dark_gray"},{text:"0",color:"gray"},{text:" — Start decorating!",color:"dark_gray",italic:true}]
execute if score @s hs.decor matches 1..99 run data modify entity @e[type=text_display,tag=HS.Decor,distance=..7,limit=1] text set value [{text:"Comfort: ",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" — Keep decorating!",color:"dark_gray",italic:true}]
execute if score @s hs.decor matches 100..499 run function evercraft:housing/decoration/show_score {rank:"Budding",rank_color:"gray"}
execute if score @s hs.decor matches 500..999 run function evercraft:housing/decoration/show_score {rank:"Novice",rank_color:"green"}
execute if score @s hs.decor matches 1000..2499 run function evercraft:housing/decoration/show_score {rank:"Designer",rank_color:"aqua"}
execute if score @s hs.decor matches 2500..4999 run function evercraft:housing/decoration/show_score {rank:"Architect",rank_color:"gold"}
execute if score @s hs.decor matches 5000.. run function evercraft:housing/decoration/show_score {rank:"Legendary",rank_color:"light_purple"}

# === VISITORS ===
data modify entity @e[type=text_display,tag=HS.Visitors,distance=..7,limit=1] text set value [{text:"Visitors: ",color:"dark_gray"},{score:{name:"@s",objective:"hs.visitors"},color:"white"},{text:" total",color:"dark_gray"},{text:" (",color:"dark_gray"},{score:{name:"@s",objective:"hs.visit_today"},color:"yellow"},{text:" today)",color:"dark_gray"}]

# === NEXT TIER INFO ===
execute if score @s hs.tier matches 1 run data modify entity @e[type=text_display,tag=HS.Next,distance=..7,limit=1] text set value [{text:"Next: ",color:"gray"},{text:"Tier 2 Homestead",color:"yellow"},{text:" — adds Saturation",color:"dark_green"}]
execute if score @s hs.tier matches 2 run data modify entity @e[type=text_display,tag=HS.Next,distance=..7,limit=1] text set value [{text:"Next: ",color:"gray"},{text:"Tier 3 Estate",color:"aqua"},{text:" — adds DR +0.5",color:"gold"}]
execute if score @s hs.tier matches 3 run data modify entity @e[type=text_display,tag=HS.Next,distance=..7,limit=1] text set value [{text:"Next: ",color:"gray"},{text:"Tier 4 Manor",color:"light_purple"},{text:" — adds Fire Resistance",color:"yellow"}]
execute if score @s hs.tier matches 4 run data modify entity @e[type=text_display,tag=HS.Next,distance=..7,limit=1] text set value [{text:"Next: ",color:"gray"},{text:"Tier 5 Sanctuary",color:"gold"},{text:" — adds Resistance I + DR 1.0",color:"dark_purple"}]
execute if score @s hs.tier matches 5 run data modify entity @e[type=text_display,tag=HS.Next,distance=..7,limit=1] text set value [{text:"Maximum tier reached!",color:"gold",bold:true}]

# === COST LINE ===
execute if score @s hs.tier matches 1 run data modify entity @e[type=text_display,tag=HS.Cost,distance=..7,limit=1] text set value [{text:"Cost: ",color:"gray"},{text:"16 Netherite Ingots",color:"dark_aqua"}]
execute if score @s hs.tier matches 2 run data modify entity @e[type=text_display,tag=HS.Cost,distance=..7,limit=1] text set value [{text:"Cost: ",color:"gray"},{text:"32 Netherite Ingots",color:"dark_aqua"}]
execute if score @s hs.tier matches 3 run data modify entity @e[type=text_display,tag=HS.Cost,distance=..7,limit=1] text set value [{text:"Cost: ",color:"gray"},{text:"64 Netherite Ingots",color:"dark_aqua"}]
execute if score @s hs.tier matches 4 run data modify entity @e[type=text_display,tag=HS.Cost,distance=..7,limit=1] text set value [{text:"Cost: ",color:"gray"},{text:"128 Netherite Ingots",color:"dark_aqua"}]
execute if score @s hs.tier matches 5 run data modify entity @e[type=text_display,tag=HS.Cost,distance=..7,limit=1] text set value {text:""}

# === UPGRADE BUTTON (active/inactive based on tier + netherite ingots) ===
# Max tier = gray out
execute if score @s hs.tier matches 5 run data modify entity @e[type=text_display,tag=HS.UpgradeTxt,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Max Tier",color:"dark_gray"},{text:" ]",color:"dark_gray"}]

# Check if can afford
execute if score @s hs.tier matches 1..4 store result score #hs_currency hs.temp run clear @s netherite_ingot 0
scoreboard players set #hs_cost hs.temp 0
execute if score @s hs.tier matches 1 run scoreboard players set #hs_cost hs.temp 16
execute if score @s hs.tier matches 2 run scoreboard players set #hs_cost hs.temp 32
execute if score @s hs.tier matches 3 run scoreboard players set #hs_cost hs.temp 64
execute if score @s hs.tier matches 4 run scoreboard players set #hs_cost hs.temp 128

# Can afford = green, can't = gray
execute if score @s hs.tier matches 1..4 if score #hs_currency hs.temp >= #hs_cost hs.temp run data modify entity @e[type=text_display,tag=HS.UpgradeTxt,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Upgrade",color:"green",bold:true},{text:" ]",color:"dark_gray"}]
execute if score @s hs.tier matches 1..4 unless score #hs_currency hs.temp >= #hs_cost hs.temp run data modify entity @e[type=text_display,tag=HS.UpgradeTxt,distance=..7,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Upgrade",color:"dark_gray"},{text:" ]",color:"dark_gray"}]
