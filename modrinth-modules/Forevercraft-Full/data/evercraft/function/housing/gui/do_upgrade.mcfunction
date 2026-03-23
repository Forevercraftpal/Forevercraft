# ============================================================
# Hearthstone GUI — Perform Upgrade
# Run as: player, at player position
# ============================================================

# Already max tier?
execute if score @s hs.tier matches 5 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your home is already max tier!",color:"yellow"}]
execute if score @s hs.tier matches 5 run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.5
execute if score @s hs.tier matches 5 run return fail

# Check netherite ingot cost based on current tier
# Tier 1→2: 16, Tier 2→3: 32, Tier 3→4: 64, Tier 4→5: 128
scoreboard players set #hs_cost hs.temp 0
execute if score @s hs.tier matches 1 run scoreboard players set #hs_cost hs.temp 16
execute if score @s hs.tier matches 2 run scoreboard players set #hs_cost hs.temp 32
execute if score @s hs.tier matches 3 run scoreboard players set #hs_cost hs.temp 64
execute if score @s hs.tier matches 4 run scoreboard players set #hs_cost hs.temp 128

# Count player's netherite ingots
execute store result score #hs_currency hs.temp run clear @s netherite_ingot 0

# Not enough?
execute if score #hs_currency hs.temp < #hs_cost hs.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough Netherite Ingots! ",color:"red"},{text:"Need ",color:"gray"},{score:{name:"#hs_cost",objective:"hs.temp"},color:"dark_aqua"},{text:" Netherite Ingots.",color:"gray"}]
execute if score #hs_currency hs.temp < #hs_cost hs.temp run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 1.2
execute if score #hs_currency hs.temp < #hs_cost hs.temp run return fail

# Consume netherite ingots (use macro to pass the amount)
execute store result storage evercraft:housing temp.cost int 1 run scoreboard players get #hs_cost hs.temp
function evercraft:housing/gui/consume_cost with storage evercraft:housing temp

# Increment tier
scoreboard players add @s hs.tier 1

# Sync tier to the hearthstone marker (for garden growth system)
execute store result storage evercraft:housing temp.new_tier int 1 run scoreboard players get @s hs.tier
function evercraft:housing/garden/sync_tier with storage evercraft:housing temp

# Remove old DR modifier if upgrading past tier 3 (will re-add correct one)
execute if score @s hs.tier matches 4.. run attribute @s luck modifier remove evercraft:housing_dr

# Apply new DR modifier for tier 3+ (only if in zone — zone/enter handles application)
# The zone system will pick up the new tier on next check

# Announce upgrade
execute if score @s hs.tier matches 2 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Upgraded to ",color:"green"},{text:"Tier 2: Homestead",color:"yellow"},{text:" — +Saturation while home!",color:"gray"}]
execute if score @s hs.tier matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Upgraded to ",color:"green"},{text:"Tier 3: Estate",color:"aqua"},{text:" — +DR 0.5 while home!",color:"gray"}]
execute if score @s hs.tier matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"\u2618 Garden Plot unlocked!",color:"green"},{text:" Crops within 64 blocks of your Hearthstone grow faster.",color:"dark_green"}]
execute if score @s hs.tier matches 4 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Upgraded to ",color:"green"},{text:"Tier 4: Manor",color:"light_purple"},{text:" — +Fire Resistance while home!",color:"gray"}]
execute if score @s hs.tier matches 5 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Upgraded to ",color:"green"},{text:"Tier 5: Sanctuary",color:"gold",bold:true},{text:" — +Resistance I + DR 1.0 while home!",color:"gray"}]

# Award House Key at Tier 3 + Architect comfort
execute if score @s hs.tier matches 3.. if score @s hs.decor matches 2500.. unless entity @s[tag=hs.has_satchel] run function evercraft:housing/satchel/award

# Effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.8 1.0
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 0.5 1.2
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20

# If in zone, re-enter to apply new buffs immediately
execute if score @s hs.in_zone matches 1 run function evercraft:housing/zone/enter

# Refresh GUI
execute at @s run function evercraft:housing/gui/refresh
