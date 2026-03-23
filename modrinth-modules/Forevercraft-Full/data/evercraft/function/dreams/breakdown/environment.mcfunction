# Dream Rate Breakdown — Environmental Modifiers
# Time of day, weather, moon phase bonuses

scoreboard players set #dr_any ec.temp 0

# Rain + Fishing Rod (+0.5)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_rain_fishing_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Rain + Fishing Rod",color:"blue"},{text:"       +0.5",color:"gold"}]

# Full Moon + Fishing Rod (+0.5)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_fullmoon_fishing_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Full Moon + Fishing",color:"yellow"},{text:"      +0.5",color:"gold"}]

# Morning + Fishing Rod (+0.5)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_morning_fishing_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Morning + Fishing",color:"yellow"},{text:"        +0.5",color:"gold"}]

# Noon + Harvest Tools (+1.0)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_noon_harvest_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Noon + Harvest",color:"yellow"},{text:"          +1.0",color:"gold"}]

# Night + Mob Hunting (+0.5)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_night_mob_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Night + Combat",color:"dark_purple"},{text:"          +0.5",color:"gold"}]

# New Moon + Mob Hunting (+0.5)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_newmoon_mob_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    New Moon + Combat",color:"dark_purple"},{text:"       +0.5",color:"gold"}]

# Harvest Moon (+1.5)
execute store success score #has ec.temp run attribute @s luck modifier value get ec_harvest_moon_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Harvest Moon",color:"gold"},{text:"              +1.5",color:"gold"}]

# Home Zone DR (+0.5 or +1.0 based on tier)
execute store success score #has_hdr ec.temp run attribute @s luck modifier value get evercraft:housing_dr 10
execute if score #has_hdr ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Environment:",color:"gray"}]
execute if score #has_hdr ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has_hdr ec.temp matches 1 if score @s hs.tier matches 3..4 run tellraw @s [{text:"    Home Zone (Estate)",color:"gold"},{text:"       +0.5",color:"gold"}]
execute if score #has_hdr ec.temp matches 1 if score @s hs.tier matches 5 run tellraw @s [{text:"    Home Zone (Sanctuary)",color:"gold"},{text:"    +1.0",color:"gold"}]
