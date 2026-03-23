# Trophy Gallery — Per-trophy display as text_display entities
# Shows earned (gold) vs locked (dark_gray) trophies
# Run as player at player position
# Uses bitfield: ec.cf_trophies

# Extract all 15 bits into temp scores for conditional display
scoreboard players operation #t_bits ec.temp = @s ec.cf_trophies

# Bit 0: Hearthkeeper
scoreboard players operation #t0 ec.temp = #t_bits ec.temp
scoreboard players operation #t0 ec.temp %= #2 ec.const
# Bit 1: Grand Architect
scoreboard players operation #t1 ec.temp = #t_bits ec.temp
scoreboard players operation #t1 ec.temp /= #trophy_bit_1 ec.const
scoreboard players operation #t1 ec.temp %= #2 ec.const
# Bit 2: Legendary Builder
scoreboard players operation #t2 ec.temp = #t_bits ec.temp
scoreboard players operation #t2 ec.temp /= #trophy_bit_2 ec.const
scoreboard players operation #t2 ec.temp %= #2 ec.const
# Bit 3: Dragon Slayer
scoreboard players operation #t3 ec.temp = #t_bits ec.temp
scoreboard players operation #t3 ec.temp /= #trophy_bit_3 ec.const
scoreboard players operation #t3 ec.temp %= #2 ec.const
# Bit 4: Wither Bane
scoreboard players operation #t4 ec.temp = #t_bits ec.temp
scoreboard players operation #t4 ec.temp /= #trophy_bit_4 ec.const
scoreboard players operation #t4 ec.temp %= #2 ec.const
# Bit 5: World Explorer
scoreboard players operation #t5 ec.temp = #t_bits ec.temp
scoreboard players operation #t5 ec.temp /= #trophy_bit_5 ec.const
scoreboard players operation #t5 ec.temp %= #2 ec.const
# Bit 6: Lore Keeper
scoreboard players operation #t6 ec.temp = #t_bits ec.temp
scoreboard players operation #t6 ec.temp /= #trophy_bit_6 ec.const
scoreboard players operation #t6 ec.temp %= #2 ec.const
# Bit 7: Battle Master
scoreboard players operation #t7 ec.temp = #t_bits ec.temp
scoreboard players operation #t7 ec.temp /= #trophy_bit_7 ec.const
scoreboard players operation #t7 ec.temp %= #2 ec.const

# Left column (bits 0-7) — Building: text array with conditional coloring
# Each trophy line: earned = colored name, locked = dark_gray "???"
# Build left column text_display with all 8 trophies
execute rotated ~ 0 positioned ^0.55 ^1.85 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,line_width:250,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{"text":"Building...","color":"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Use tellraw for per-trophy status (most reliable for conditional display)
tellraw @s [{"text":""},{"text":"\n"}]
tellraw @s [{"text":"  \u2500\u2500\u2500 ","color":"#FDD835"},{"text":"Trophy Collection","color":"#FDD835","bold":true},{"text":" \u2500\u2500\u2500","color":"#FDD835"}]

# Row 1: Hearthkeeper
execute if score #t0 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"gold"},{"text":"Hearthkeeper","color":"gold"},{"text":" \u2014 Place your first Hearthstone","color":"gray"}]
execute if score #t0 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Place your first Hearthstone","color":"dark_gray"}]

# Row 2: Grand Architect
execute if score #t1 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"#66BB6A"},{"text":"Grand Architect","color":"#66BB6A"},{"text":" \u2014 2500 Comfort Score","color":"gray"}]
execute if score #t1 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 2500 Comfort Score","color":"dark_gray"}]

# Row 3: Legendary Builder
execute if score #t2 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"light_purple"},{"text":"Legendary Builder","color":"light_purple"},{"text":" \u2014 5000 Comfort Score","color":"gray"}]
execute if score #t2 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 5000 Comfort Score","color":"dark_gray"}]

# Row 4: Dragon Slayer
execute if score #t3 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"dark_purple"},{"text":"Dragon Slayer","color":"dark_purple"},{"text":" \u2014 Defeat the Ender Dragon","color":"gray"}]
execute if score #t3 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Defeat the Ender Dragon","color":"dark_gray"}]

# Row 5: Wither Bane
execute if score #t4 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"dark_aqua"},{"text":"Wither Bane","color":"dark_aqua"},{"text":" \u2014 Defeat the Wither","color":"gray"}]
execute if score #t4 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Defeat the Wither","color":"dark_gray"}]

# Row 6: World Explorer
execute if score #t5 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"green"},{"text":"World Explorer","color":"green"},{"text":" \u2014 Discover 20 biomes","color":"gray"}]
execute if score #t5 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Discover 20 biomes","color":"dark_gray"}]

# Row 7: Lore Keeper
execute if score #t6 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"yellow"},{"text":"Lore Keeper","color":"yellow"},{"text":" \u2014 Find 25 lore fragments","color":"gray"}]
execute if score #t6 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Find 25 lore fragments","color":"dark_gray"}]

# Row 8: Battle Master
execute if score #t7 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"red"},{"text":"Battle Master","color":"red"},{"text":" \u2014 Complete 20 combat milestones","color":"gray"}]
execute if score #t7 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Complete 20 combat milestones","color":"dark_gray"}]

# Bit 8-14: Extract remaining bits
scoreboard players operation #t8 ec.temp = @s ec.cf_trophies
scoreboard players operation #t8 ec.temp /= #trophy_bit_8 ec.const
scoreboard players operation #t8 ec.temp %= #2 ec.const
scoreboard players operation #t9 ec.temp = @s ec.cf_trophies
scoreboard players operation #t9 ec.temp /= #trophy_bit_9 ec.const
scoreboard players operation #t9 ec.temp %= #2 ec.const
scoreboard players operation #t10 ec.temp = @s ec.cf_trophies
scoreboard players operation #t10 ec.temp /= #trophy_bit_10 ec.const
scoreboard players operation #t10 ec.temp %= #2 ec.const
scoreboard players operation #t11 ec.temp = @s ec.cf_trophies
scoreboard players operation #t11 ec.temp /= #trophy_bit_11 ec.const
scoreboard players operation #t11 ec.temp %= #2 ec.const
scoreboard players operation #t12 ec.temp = @s ec.cf_trophies
scoreboard players operation #t12 ec.temp /= #trophy_bit_12 ec.const
scoreboard players operation #t12 ec.temp %= #2 ec.const
scoreboard players operation #t13 ec.temp = @s ec.cf_trophies
scoreboard players operation #t13 ec.temp /= #trophy_bit_13 ec.const
scoreboard players operation #t13 ec.temp %= #2 ec.const
scoreboard players operation #t14 ec.temp = @s ec.cf_trophies
scoreboard players operation #t14 ec.temp /= #trophy_bit_14 ec.const
scoreboard players operation #t14 ec.temp %= #2 ec.const

# Row 9: Pack Leader
execute if score #t8 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"#FF8C00"},{"text":"Pack Leader","color":"#FF8C00"},{"text":" \u2014 Collect 25 companions","color":"gray"}]
execute if score #t8 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Collect 25 companions","color":"dark_gray"}]

# Row 10: CraftForever Star
execute if score #t9 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"aqua"},{"text":"CraftForever Star","color":"aqua"},{"text":" \u2014 Reach Artisan Rank 50","color":"gray"}]
execute if score #t9 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Reach Artisan Rank 50","color":"dark_gray"}]

# Row 11: Treasure Hunter
execute if score #t10 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"gold"},{"text":"Treasure Hunter","color":"gold"},{"text":" \u2014 Open 50 structure crates","color":"gray"}]
execute if score #t10 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Open 50 structure crates","color":"dark_gray"}]

# Row 12: Expeditionist
execute if score #t11 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"dark_aqua"},{"text":"Expeditionist","color":"dark_aqua"},{"text":" \u2014 Complete 50 expeditions","color":"gray"}]
execute if score #t11 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Complete 50 expeditions","color":"dark_gray"}]

# Row 13: Realm Champion
execute if score #t12 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"#E0B0FF"},{"text":"Realm Champion","color":"#E0B0FF"},{"text":" \u2014 Complete all 32 milestones","color":"gray"}]
execute if score #t12 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Complete all 32 milestones","color":"dark_gray"}]

# Row 14: Spirit Forger
execute if score #t13 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"dark_red"},{"text":"Spirit Forger","color":"dark_red"},{"text":" \u2014 Craft a spirit tool","color":"gray"}]
execute if score #t13 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Craft a spirit tool","color":"dark_gray"}]

# Row 15: Guild Legend
execute if score #t14 ec.temp matches 1 run tellraw @s [{"text":"  \u2605 ","color":"dark_purple"},{"text":"Guild Legend","color":"dark_purple"},{"text":" \u2014 Max guild contribution","color":"gray"}]
execute if score #t14 ec.temp matches 0 run tellraw @s [{"text":"  \u2606 ","color":"dark_gray"},{"text":"???","color":"dark_gray"},{"text":" \u2014 Max guild contribution","color":"dark_gray"}]

tellraw @s [{"text":"  \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500","color":"#FDD835"}]
tellraw @s [{"text":"  Trophies boost Comfort by +25 when placed!","color":"dark_gray","italic":true}]
