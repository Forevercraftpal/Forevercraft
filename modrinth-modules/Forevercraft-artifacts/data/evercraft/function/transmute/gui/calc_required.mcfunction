# Transmute — Calculate required artifact count based on tier + Artificer discount
# Run as: player
# Sets: tx.required, tx.has_disc
# Cost: Common/Uncommon=5, Rare/Ornate=4, Exquisite=3, Mythical=2
# Artificer discount: -1, once per day (not applicable to Mythical)

# Default (no tier yet): max cost so "full" check won't false-trigger
scoreboard players set @s tx.required 5

# Set cost based on deposited tier
execute if score @s tx.tier matches 1..2 run scoreboard players set @s tx.required 5
execute if score @s tx.tier matches 3..4 run scoreboard players set @s tx.required 4
execute if score @s tx.tier matches 5 run scoreboard players set @s tx.required 3
execute if score @s tx.tier matches 6 run scoreboard players set @s tx.required 2

# Mythical has no discount — skip Artificer check entirely
execute if score @s tx.tier matches 6 run scoreboard players set @s tx.has_disc 0
execute if score @s tx.tier matches 6 run return 0

# === Artificer discount check ===
scoreboard players set @s tx.has_disc 0

# Step 1: Is there an Artificer nearby?
execute if entity @e[type=minecraft:villager,tag=more_professions_artificer,distance=..12,limit=1] run scoreboard players set @s tx.has_disc 1

# Step 2: Has the discount already been used today?
execute store result score #tx_today tx.temp run time query day
execute if score @s tx.has_disc matches 1 if score @s tx.disc_day = #tx_today tx.temp run scoreboard players set @s tx.has_disc 0

# Step 3: Apply discount if available
execute if score @s tx.has_disc matches 1 run scoreboard players remove @s tx.required 1
