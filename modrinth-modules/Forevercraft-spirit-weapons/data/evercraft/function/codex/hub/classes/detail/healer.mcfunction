# Classes Detail — Healer Artifacts (Macro)
# Macro arg: slot (0-11)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Medicinal Bandages (T1 Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] run tellraw @s ["\n",{"text":"Medicinal Bandages","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"AoE Heal — Heals all players within 8 blocks for 1 heart.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Herbal Poultice (T1 Common)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] run tellraw @s ["\n",{"text":"Herbal Poultice","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Self Heal — Heals yourself for 2 hearts.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Smelling Salts (T2 Uncommon)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] run tellraw @s ["\n",{"text":"Smelling Salts","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Cleanse — Removes all negative effects and heals 1 heart within 12 blocks.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Soothing Balm (T2 Uncommon)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] run tellraw @s ["\n",{"text":"Soothing Balm","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Invigorate — Heals 2 hearts and grants Speed I within 12 blocks.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Mending Chalice (T3 Rare)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] run tellraw @s ["\n",{"text":"Mending Chalice","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Restore — Heals 2 hearts and grants Regeneration I within 16 blocks.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Warding Incense (T3 Rare)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] run tellraw @s ["\n",{"text":"Warding Incense","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ward — Heals 2 hearts and grants Fire Resistance within 14 blocks.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 6: Phoenix Plume (T4 Ornate)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] run tellraw @s ["\n",{"text":"Phoenix Plume","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Purify — Heals 4 hearts and cleanses all negative effects within 20 blocks.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 7: Radiant Censer (T4 Ornate)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] run tellraw @s ["\n",{"text":"Radiant Censer","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Radiance — Heals 2 hearts and grants Regeneration II within 18 blocks.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 8: Celestial Lotus (T5 Exquisite)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] run tellraw @s ["\n",{"text":"Celestial Lotus","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Celestial Shield — Heals 4 hearts and grants Absorption II within 24 blocks.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 9: Lifewarden's Tome (T5 Exquisite)
execute if score #cls_slot ec.temp matches 9 if entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] run tellraw @s ["\n",{"text":"Lifewarden's Tome","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Triage — Heals all nearby players; those below 50% HP receive a massive bonus heal.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 9 unless entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 10: Endless Ambrosia (T6 Mythical)
execute if score #cls_slot ec.temp matches 10 if entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] run tellraw @s ["\n",{"text":"Endless Ambrosia","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Divine Feast — Full heal + Resistance II (32 blocks). Set: Journey.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 10 unless entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 11: Tears of the World Tree (T6 Mythical)
execute if score #cls_slot ec.temp matches 11 if entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] run tellraw @s ["\n",{"text":"Tears of the World Tree","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"World Tree's Blessing — Heal 8♥ + Regen III + Absorption III (32 blocks). Set: Journey.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 11 unless entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
