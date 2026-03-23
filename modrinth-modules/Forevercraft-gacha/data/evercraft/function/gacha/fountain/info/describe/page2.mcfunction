# Describe items on Page 2 — Ornate (5) + Exquisite (7) + Mythical first 6
# Macro {slot:N}, runs as @s = player

$scoreboard players set #gi_slot ec.temp $(slot)

# === ORNATE (1.6% each) ===
execute if score #gi_slot ec.temp matches 0 run tellraw @s [{"text":"\u2726 ","color":"light_purple"},{"text":"Ornate Artifact Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Ornate","color":"light_purple"},{"text":" (1.6%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 0 run tellraw @s {"text":"Contains a random Ornate-tier artifact.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"light_purple"},{"text":"Seed of Forgetting","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Ornate","color":"light_purple"},{"text":" (1.6%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 1 run tellraw @s {"text":"Resets all skill points in one Advantage tree.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"light_purple"},{"text":"Exclusive Particle","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Ornate","color":"light_purple"},{"text":" (1.6%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 2 run tellraw @s {"text":"A unique particle trail that follows you.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 3 run tellraw @s [{"text":"\u2726 ","color":"light_purple"},{"text":"Exclusive Title","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Ornate","color":"light_purple"},{"text":" (1.6%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 3 run tellraw @s {"text":"A special title displayed above your name.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 4 run tellraw @s [{"text":"\u2726 ","color":"light_purple"},{"text":"Ornate Companion Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Ornate","color":"light_purple"},{"text":" (1.6%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 4 run tellraw @s {"text":"Contains a random Ornate-tier companion egg.","color":"gray","italic":true}

# === EXQUISITE (0.7% each) ===
execute if score #gi_slot ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Exquisite Artifact Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 5 run tellraw @s {"text":"Contains a random Exquisite-tier artifact.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 6 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Exquisite Companion Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 6 run tellraw @s {"text":"Contains a random Exquisite-tier companion egg.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 7 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Lore Piece","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 7 run tellraw @s {"text":"A fragment of the world's hidden story.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 8 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Netherite Block","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 8 run tellraw @s {"text":"A solid block of netherite.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 9 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Hearthstone","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 9 run tellraw @s {"text":"Teleports you to your set home location.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 10 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Guidestone","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 10 run tellraw @s {"text":"Place to create a teleport waypoint.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 11 run tellraw @s [{"text":"\u2726 ","color":"#FF6B6B"},{"text":"Glyphforge","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Exquisite","color":"#FF6B6B"},{"text":" (0.7%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 11 run tellraw @s {"text":"Place to inscribe and remove glyphs on artifacts.","color":"gray","italic":true}

# === MYTHICAL (varies) ===
execute if score #gi_slot ec.temp matches 12 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"The Starless Night","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 12 run tellraw @s [{"text":"Knight Class","color":"#FFD700","bold":true},{"text":" \u2014 Netherite Sword. ","color":"gray"},{"text":"On Hit: Blindness + Wither. +3 Dmg at night.","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 13 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Shooting Star","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 13 run tellraw @s [{"text":"Archer Class","color":"#32CD32","bold":true},{"text":" \u2014 Bow. ","color":"gray"},{"text":"Arrows explode on impact. Bonus dmg to airborne.","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 14 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Dreamcast Compass","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 14 run tellraw @s {"text":"Points toward the nearest gacha-exclusive artifact you don't own.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 15 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Hero's Helmet","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 15 run tellraw @s [{"text":"Dancer Class","color":"#DA70D6","bold":true},{"text":" \u2014 Netherite Helmet. ","color":"gray"},{"text":"Part of the Hero Set (4pc).","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 16 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Hero's Chestplate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 16 run tellraw @s [{"text":"Dancer Class","color":"#DA70D6","bold":true},{"text":" \u2014 Netherite Chestplate. ","color":"gray"},{"text":"Part of the Hero Set (4pc).","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 17 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Hero's Leggings","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 17 run tellraw @s [{"text":"Dancer Class","color":"#DA70D6","bold":true},{"text":" \u2014 Netherite Leggings. ","color":"gray"},{"text":"Part of the Hero Set (4pc).","color":"dark_aqua"}]
