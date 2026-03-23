# Describe items on Page 1 — Common (6) + Uncommon (6) + Rare (6)
# Macro {slot:N}, runs as @s = player

$scoreboard players set #gi_slot ec.temp $(slot)

# === COMMON (7.8% each) ===
execute if score #gi_slot ec.temp matches 0 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"XP Bottles (10-25)","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Common","color":"gray"},{"text":" (7.8%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 0 run tellraw @s {"text":"A shower of experience orbs.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Common Awakening Stone","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Common","color":"gray"},{"text":" (7.8%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 1 run tellraw @s {"text":"Awakens a Common companion egg.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Random Glyph","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Common","color":"gray"},{"text":" (7.8%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 2 run tellraw @s {"text":"A random glyph inscription for your artifacts.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 3 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Diamonds x3","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Common","color":"gray"},{"text":" (7.8%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 3 run tellraw @s {"text":"Three sparkling diamonds.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 4 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Crumb of Dreams","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Common","color":"gray"},{"text":" (7.8%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 4 run tellraw @s {"text":"A tiny morsel of dreamstuff. Restores a small amount of hunger.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"gray"},{"text":"Emeralds x8","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Common","color":"gray"},{"text":" (7.8%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 5 run tellraw @s {"text":"Eight emeralds for trading.","color":"gray","italic":true}

# === UNCOMMON (4.2% each) ===
execute if score #gi_slot ec.temp matches 6 run tellraw @s [{"text":"\u2726 ","color":"green"},{"text":"Uncommon Awakening Stone","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Uncommon","color":"green"},{"text":" (4.2%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 6 run tellraw @s {"text":"Awakens an Uncommon companion egg.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 7 run tellraw @s [{"text":"\u2726 ","color":"green"},{"text":"Essentials Satchel","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Uncommon","color":"green"},{"text":" (4.2%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 7 run tellraw @s {"text":"A barrel of useful supplies and materials.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 8 run tellraw @s [{"text":"\u2726 ","color":"green"},{"text":"Dungeon Key","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Uncommon","color":"green"},{"text":" (4.2%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 8 run tellraw @s {"text":"Unlocks a dungeon entrance. One-time use.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 9 run tellraw @s [{"text":"\u2726 ","color":"green"},{"text":"Companion Treat","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Uncommon","color":"green"},{"text":" (4.2%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 9 run tellraw @s {"text":"Feed to a companion to increase friendship.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 10 run tellraw @s [{"text":"\u2726 ","color":"green"},{"text":"Netherite Scraps x2","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Uncommon","color":"green"},{"text":" (4.2%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 10 run tellraw @s {"text":"Two ancient netherite scraps.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 11 run tellraw @s [{"text":"\u2726 ","color":"green"},{"text":"Uncommon Artifact Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Uncommon","color":"green"},{"text":" (4.2%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 11 run tellraw @s {"text":"Contains a random Uncommon-tier artifact.","color":"gray","italic":true}

# === RARE (2.5% each) ===
execute if score #gi_slot ec.temp matches 12 run tellraw @s [{"text":"\u2726 ","color":"aqua"},{"text":"Rare Artifact Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Rare","color":"aqua"},{"text":" (2.5%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 12 run tellraw @s {"text":"Contains a random Rare-tier artifact.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 13 run tellraw @s [{"text":"\u2726 ","color":"aqua"},{"text":"Tree Token","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Rare","color":"aqua"},{"text":" (2.5%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 13 run tellraw @s {"text":"Grants one free skill point in any Advantage tree.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 14 run tellraw @s [{"text":"\u2726 ","color":"aqua"},{"text":"Tree Shard","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Rare","color":"aqua"},{"text":" (2.5%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 14 run tellraw @s {"text":"Resets one skill point from any Advantage tree.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 15 run tellraw @s [{"text":"\u2726 ","color":"aqua"},{"text":"Potion of Dreams","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Rare","color":"aqua"},{"text":" (2.5%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 15 run tellraw @s {"text":"Grants powerful buffs for a limited time.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 16 run tellraw @s [{"text":"\u2726 ","color":"aqua"},{"text":"Coin of Lucidity","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Rare","color":"aqua"},{"text":" (2.5%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 16 run tellraw @s {"text":"A rare currency used for Lucid Claims.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 17 run tellraw @s [{"text":"\u2726 ","color":"aqua"},{"text":"Rare Companion Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Rare","color":"aqua"},{"text":" (2.5%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 17 run tellraw @s {"text":"Contains a random Rare-tier companion egg.","color":"gray","italic":true}
