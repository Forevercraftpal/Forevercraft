# Classes Detail — Hunter Crossbows (Macro)
# Macro arg: slot (0-5)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Rapid Crossbow (T1 Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run tellraw @s ["\n",{"text":"Rapid Crossbow","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Quickdraw — Precision shot grants Speed III for 2 seconds.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Firebolt Thrower (T2 Uncommon)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run tellraw @s ["\n",{"text":"Firebolt Thrower","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ignition — Precision shot creates a 4-block fire AoE at the impact.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Acacia Ballista (T3 Rare)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run tellraw @s ["\n",{"text":"Acacia Ballista","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Impale — Precision shot inflicts Slowness IV and Instant Damage I.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Corrupted Crossbow (T4 Ornate)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run tellraw @s ["\n",{"text":"Corrupted Crossbow","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Blight — Precision shot spreads Wither III and Poison II in a 5-block AoE.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Echo Shot (T5 Exquisite)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run tellraw @s ["\n",{"text":"Echo Shot","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Resonance — Precision shot echoes Instant Damage and Glowing to all mobs within 8 blocks.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Butterfly Crossbow (T6 Mythical)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run tellraw @s ["\n",{"text":"Butterfly Crossbow","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Rift — Precision shot creates a gravity well that collapses for Wither II and Instant Damage.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
