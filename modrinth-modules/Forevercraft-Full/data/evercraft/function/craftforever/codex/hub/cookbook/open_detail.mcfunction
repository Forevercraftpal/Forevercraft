# ============================================================
# Cookbook — Open Category Detail Page (runs as player)
# ec.cf_ck_cat = selected category (0-10)
# ============================================================

# Kill section content
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5,limit=1,sort=nearest] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.SectionContent,distance=..5]

# Spawn back button
function evercraft:craftforever/codex/hub/spawn_back_button

# Set sub-page mode
scoreboard players set @s ec.cf_codex_page 2

# --- Read mastery count for selected category ---
execute if score @s ec.cf_ck_cat matches 0 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_combat
execute if score @s ec.cf_ck_cat matches 1 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_mining
execute if score @s ec.cf_ck_cat matches 2 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_fortune
execute if score @s ec.cf_ck_cat matches 3 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_wayfarer
execute if score @s ec.cf_ck_cat matches 4 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_delicacy
execute if score @s ec.cf_ck_cat matches 5 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_seasonal
execute if score @s ec.cf_ck_cat matches 6 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_treats
execute if score @s ec.cf_ck_cat matches 7 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_ration
execute if score @s ec.cf_ck_cat matches 8 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_feast
execute if score @s ec.cf_ck_cat matches 9 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_preserve
execute if score @s ec.cf_ck_cat matches 10 run scoreboard players operation #ck_mastery ec.temp = @s ck.m_spirit
execute store result storage evercraft:cf_temp m_count int 1 run scoreboard players get #ck_mastery ec.temp

# --- Compute tier label ---
data modify storage evercraft:cf_temp tier set value "Novice"
data modify storage evercraft:cf_temp stars set value "\u2606\u2606\u2606"
execute if score #ck_mastery ec.temp matches 25.. run data modify storage evercraft:cf_temp tier set value "Apprentice"
execute if score #ck_mastery ec.temp matches 25.. run data modify storage evercraft:cf_temp stars set value "\u2605\u2606\u2606"
execute if score #ck_mastery ec.temp matches 100.. run data modify storage evercraft:cf_temp tier set value "Journeyman"
execute if score #ck_mastery ec.temp matches 100.. run data modify storage evercraft:cf_temp stars set value "\u2605\u2605\u2606"
execute if score #ck_mastery ec.temp matches 250.. run data modify storage evercraft:cf_temp tier set value "Expert"
execute if score #ck_mastery ec.temp matches 250.. run data modify storage evercraft:cf_temp stars set value "\u2605\u2605\u2605"
execute if score #ck_mastery ec.temp matches 500.. run data modify storage evercraft:cf_temp tier set value "Master Chef"
execute if score #ck_mastery ec.temp matches 500.. run data modify storage evercraft:cf_temp stars set value "\u2726\u2726\u2726"

# --- Next tier milestone ---
data modify storage evercraft:cf_temp next_tier set value "Next: Apprentice (25 meals)"
execute if score #ck_mastery ec.temp matches 25.. run data modify storage evercraft:cf_temp next_tier set value "Next: Journeyman (100 meals)"
execute if score #ck_mastery ec.temp matches 100.. run data modify storage evercraft:cf_temp next_tier set value "Next: Expert (250 meals)"
execute if score #ck_mastery ec.temp matches 250.. run data modify storage evercraft:cf_temp next_tier set value "Next: Master Chef (500 meals)"
execute if score #ck_mastery ec.temp matches 500.. run data modify storage evercraft:cf_temp next_tier set value "Mastery Complete!"

# --- Read discovery bitfield for selected category ---
scoreboard players set #ck_disc ec.temp 0
execute if score @s ec.cf_ck_cat matches 0 run scoreboard players operation #ck_disc ec.temp = @s ck.disc0
execute if score @s ec.cf_ck_cat matches 1 run scoreboard players operation #ck_disc ec.temp = @s ck.disc1
execute if score @s ec.cf_ck_cat matches 2 run scoreboard players operation #ck_disc ec.temp = @s ck.disc2
execute if score @s ec.cf_ck_cat matches 3 run scoreboard players operation #ck_disc ec.temp = @s ck.disc3
execute if score @s ec.cf_ck_cat matches 4 run scoreboard players operation #ck_disc ec.temp = @s ck.disc4
execute if score @s ec.cf_ck_cat matches 5 run scoreboard players operation #ck_disc ec.temp = @s ck.disc5
execute if score @s ec.cf_ck_cat matches 6 run scoreboard players operation #ck_disc ec.temp = @s ck.disc6
execute if score @s ec.cf_ck_cat matches 7 run scoreboard players operation #ck_disc ec.temp = @s ck.disc7
execute if score @s ec.cf_ck_cat matches 8 run scoreboard players operation #ck_disc ec.temp = @s ck.disc8
execute if score @s ec.cf_ck_cat matches 9 run scoreboard players operation #ck_disc ec.temp = @s ck.disc9
execute if score @s ec.cf_ck_cat matches 10 run scoreboard players operation #ck_disc ec.temp = @s ck.disc10

# --- Extract 6 bits → b0..b5 ---
# Bit 0
scoreboard players operation #ck_bit ec.temp = #ck_disc ec.temp
scoreboard players operation #ck_bit ec.temp %= #2 adv.temp
execute store result storage evercraft:cf_temp b0 int 1 run scoreboard players get #ck_bit ec.temp
scoreboard players operation #ck_disc ec.temp /= #2 adv.temp
# Bit 1
scoreboard players operation #ck_bit ec.temp = #ck_disc ec.temp
scoreboard players operation #ck_bit ec.temp %= #2 adv.temp
execute store result storage evercraft:cf_temp b1 int 1 run scoreboard players get #ck_bit ec.temp
scoreboard players operation #ck_disc ec.temp /= #2 adv.temp
# Bit 2
scoreboard players operation #ck_bit ec.temp = #ck_disc ec.temp
scoreboard players operation #ck_bit ec.temp %= #2 adv.temp
execute store result storage evercraft:cf_temp b2 int 1 run scoreboard players get #ck_bit ec.temp
scoreboard players operation #ck_disc ec.temp /= #2 adv.temp
# Bit 3
scoreboard players operation #ck_bit ec.temp = #ck_disc ec.temp
scoreboard players operation #ck_bit ec.temp %= #2 adv.temp
execute store result storage evercraft:cf_temp b3 int 1 run scoreboard players get #ck_bit ec.temp
scoreboard players operation #ck_disc ec.temp /= #2 adv.temp
# Bit 4
scoreboard players operation #ck_bit ec.temp = #ck_disc ec.temp
scoreboard players operation #ck_bit ec.temp %= #2 adv.temp
execute store result storage evercraft:cf_temp b4 int 1 run scoreboard players get #ck_bit ec.temp
scoreboard players operation #ck_disc ec.temp /= #2 adv.temp
# Bit 5
scoreboard players operation #ck_bit ec.temp = #ck_disc ec.temp
scoreboard players operation #ck_bit ec.temp %= #2 adv.temp
execute store result storage evercraft:cf_temp b5 int 1 run scoreboard players get #ck_bit ec.temp

# --- Set category name, color, and recipe names ---
# Cat 0: Combat
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp cat_name set value "Combat Cuisine"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp cat_color set value "#EF5350"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r0 set value "Warrior's Stew I"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r1 set value "Warrior's Stew II"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r2 set value "Battle Roast I"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r3 set value "Battle Roast II"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r4 set value "Conqueror's Feast I"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r5 set value "Conqueror's Feast II"
execute if score @s ec.cf_ck_cat matches 0 run data modify storage evercraft:cf_temp r_count set value 6

# Cat 1: Mining
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp cat_name set value "Mining Meals"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp cat_color set value "#FFB74D"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r0 set value "Miner's Porridge I"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r1 set value "Miner's Porridge II"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r2 set value "Delver's Stew I"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r3 set value "Delver's Stew II"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r4 set value "Stoneshaper's Feast I"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r5 set value "Stoneshaper's Feast II"
execute if score @s ec.cf_ck_cat matches 1 run data modify storage evercraft:cf_temp r_count set value 6

# Cat 2: Fortune
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp cat_name set value "Fortune Foods"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp cat_color set value "#FDD835"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r0 set value "Dream Broth I"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r1 set value "Dream Broth II"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r2 set value "Fortune's Soup I"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r3 set value "Fortune's Soup II"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r4 set value "Dreamer's Banquet I"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r5 set value "Dreamer's Banquet II"
execute if score @s ec.cf_ck_cat matches 2 run data modify storage evercraft:cf_temp r_count set value 6

# Cat 3: Wayfarer
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp cat_name set value "Wayfarer Fare"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp cat_color set value "#66BB6A"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r0 set value "Traveler's Ration I"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r1 set value "Traveler's Ration II"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r2 set value "Pathfinder's Pie I"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r3 set value "Pathfinder's Pie II"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r4 set value "Windstrider's Feast I"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r5 set value "Windstrider's Feast II"
execute if score @s ec.cf_ck_cat matches 3 run data modify storage evercraft:cf_temp r_count set value 6

# Cat 4: Delicacy (3 recipes)
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp cat_name set value "Delicacies"
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp cat_color set value "#AB47BC"
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r0 set value "Saturation Stew"
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r1 set value "Exquisite Nectar"
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r2 set value "Ambrosia"
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r3 set value ""
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r4 set value ""
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r5 set value ""
execute if score @s ec.cf_ck_cat matches 4 run data modify storage evercraft:cf_temp r_count set value 3

# Cat 5: Seasonal (4 recipes, vary by season)
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp cat_name set value "Seasonal"
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp cat_color set value "#4FC3F7"
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r0 set value "Seasonal Recipe I"
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r1 set value "Seasonal Recipe II"
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r2 set value "Seasonal Recipe III"
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r3 set value "Seasonal Recipe IV"
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r4 set value ""
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r5 set value ""
execute if score @s ec.cf_ck_cat matches 5 run data modify storage evercraft:cf_temp r_count set value 4

# Cat 6: Treats (6 recipes)
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp cat_name set value "Treats"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp cat_color set value "#F9A8D4"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r0 set value "Companion Treat"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r1 set value "Meadow Biscuit"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r2 set value "Honey Cake"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r3 set value "Savory Bone Broth"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r4 set value "Golden Morsel"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r5 set value "Spirit Treat"
execute if score @s ec.cf_ck_cat matches 6 run data modify storage evercraft:cf_temp r_count set value 6

# Cat 7: Rations (4 recipes)
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp cat_name set value "Rations"
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp cat_color set value "#8D6E63"
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r0 set value "Trail Rations"
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r1 set value "Packed Lunch"
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r2 set value "Expedition Feast"
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r3 set value "Master's Provisions"
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r4 set value ""
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r5 set value ""
execute if score @s ec.cf_ck_cat matches 7 run data modify storage evercraft:cf_temp r_count set value 4

# Cat 8: Feast Platters (4 recipes)
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp cat_name set value "Feast Platters"
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp cat_color set value "#FF7043"
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r0 set value "Warrior's Banquet"
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r1 set value "Explorer's Spread"
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r2 set value "Miner's Table"
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r3 set value "Eternal Feast"
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r4 set value ""
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r5 set value ""
execute if score @s ec.cf_ck_cat matches 8 run data modify storage evercraft:cf_temp r_count set value 4

# Cat 9: Preservation (3 recipes)
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp cat_name set value "Preservation"
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp cat_color set value "#78909C"
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r0 set value "Ironbark Bread"
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r1 set value "Deathless Stew"
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r2 set value "Spirit Jerky"
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r3 set value ""
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r4 set value ""
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r5 set value ""
execute if score @s ec.cf_ck_cat matches 9 run data modify storage evercraft:cf_temp r_count set value 3

# Cat 10: Spirit Cuisine (4 recipes)
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp cat_name set value "Spirit Cuisine"
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp cat_color set value "#CE93D8"
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r0 set value "Voidfin Steak"
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r1 set value "Starscale Soup"
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r2 set value "Eel Lightning Roll"
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r3 set value "Whisker Broth"
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r4 set value ""
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r5 set value ""
execute if score @s ec.cf_ck_cat matches 10 run data modify storage evercraft:cf_temp r_count set value 4

# --- Override recipe names with "???" for undiscovered (b=0) ---
# Re-read bits from storage into scoreboard for conditional checks
execute store result score #ck_b0 ec.temp run data get storage evercraft:cf_temp b0
execute store result score #ck_b1 ec.temp run data get storage evercraft:cf_temp b1
execute store result score #ck_b2 ec.temp run data get storage evercraft:cf_temp b2
execute store result score #ck_b3 ec.temp run data get storage evercraft:cf_temp b3
execute store result score #ck_b4 ec.temp run data get storage evercraft:cf_temp b4
execute store result score #ck_b5 ec.temp run data get storage evercraft:cf_temp b5
execute if score #ck_b0 ec.temp matches 0 run data modify storage evercraft:cf_temp r0 set value "???"
execute if score #ck_b1 ec.temp matches 0 run data modify storage evercraft:cf_temp r1 set value "???"
execute if score #ck_b2 ec.temp matches 0 run data modify storage evercraft:cf_temp r2 set value "???"
execute if score #ck_b3 ec.temp matches 0 run data modify storage evercraft:cf_temp r3 set value "???"
execute if score #ck_b4 ec.temp matches 0 run data modify storage evercraft:cf_temp r4 set value "???"
execute if score #ck_b5 ec.temp matches 0 run data modify storage evercraft:cf_temp r5 set value "???"

# --- Update title ---
execute as @e[type=text_display,tag=CF.MenuTitle,distance=..5,limit=1] run data modify entity @s text set value {"text":"\u2726 Cookbook \u2726","color":"gold","bold":true}

# --- Render detail page ---
function evercraft:craftforever/codex/hub/cookbook/detail/render with storage evercraft:cf_temp

# Stamp new entities
execute as @e[tag=CF.MenuElement,distance=..5] unless score @s ec.cf_gui_session matches 1.. run scoreboard players operation @s ec.cf_gui_session = #cf_gui_stamp ec.temp

# Cooldown + sound
scoreboard players set @s ec.cf_codex_cd 3
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
