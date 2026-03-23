# Classes Detail — Archer Bows (Macro)
# Macro arg: slot (0-11)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Hunting Bow (T1 Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run tellraw @s ["\n",{"text":"Hunting Bow","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Thorn — Overcharged shot inflicts Wither I for 4 seconds.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Mechanical Shortbow (T1 Common)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] run tellraw @s ["\n",{"text":"Mechanical Shortbow","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Steady — Overcharged shot grants Resistance II and Slowness III for 4 seconds.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Battle Bow (T2 Uncommon)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run tellraw @s ["\n",{"text":"Battle Bow","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Flicker — Overcharged shot teleports you to the arrow's impact point.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Longbow (T2 Uncommon)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/longbow=true}] run tellraw @s ["\n",{"text":"Longbow","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Predator — Overcharged shot marks the target with Glowing and Slowness II for 10 seconds.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/longbow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Shivering Bow (T3 Rare)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run tellraw @s ["\n",{"text":"Shivering Bow","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Frostfang — Overcharged shot creates a 5-block freeze AoE with Slowness III.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Light Bow (T3 Rare)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run tellraw @s ["\n",{"text":"Light Bow","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Uplift — Overcharged shot creates a 4-block Levitation AoE.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 6: Ancient Bow (T4 Ornate)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run tellraw @s ["\n",{"text":"Ancient Bow","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Kindlestrike — Overcharged shot creates a 5-block fire AoE.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 7: Power Bow (T4 Ornate)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run tellraw @s ["\n",{"text":"Power Bow","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Deadshot — Overcharged shot deals Instant Damage II and Slowness III to the target.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 8: Sabrewing (T5 Exquisite)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run tellraw @s ["\n",{"text":"Sabrewing","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Tempest — Overcharged shot rains arrows in a 6-block AoE with Instant Damage.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 9: Call of the Void (T5 Exquisite)
execute if score #cls_slot ec.temp matches 9 if entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run tellraw @s ["\n",{"text":"Call of the Void","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Soulstring — Overcharged shot drains life from the target, healing you.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 9 unless entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 10: Nocturnal Bow (T6 Mythical)
execute if score #cls_slot ec.temp matches 10 if entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run tellraw @s ["\n",{"text":"Nocturnal Bow","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Whisper — Overcharged shot blinds the target and grants you Invisibility.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 10 unless entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 11: Gaster Blaster (T6 Mythical)
execute if score #cls_slot ec.temp matches 11 if entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run tellraw @s ["\n",{"text":"Gaster Blaster","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Oblivion — Overcharged shot creates a void zone dealing Wither II and Instant Damage.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 11 unless entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
