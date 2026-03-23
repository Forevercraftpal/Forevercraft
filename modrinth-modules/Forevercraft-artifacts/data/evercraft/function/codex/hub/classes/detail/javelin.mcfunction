# Classes Detail — Javelin Tridents (Macro)
# Macro arg: slot (0-8)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Norroen Trident (T2 Uncommon)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] run tellraw @s ["\n",{"text":"Norroen Trident","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Frostbite — Melee slows target; thrown freezes in a 2-block AoE.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Ancient Trident (T3 Rare)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run tellraw @s ["\n",{"text":"Ancient Trident","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ocean's Favor — Melee grants Water Breathing; thrown deals drown damage.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Royal Trident (T3 Rare)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] run tellraw @s ["\n",{"text":"Royal Trident","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Royal Guard — Melee grants Health Boost; thrown heals 2 hearts.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Fantasy Trident (T4 Ornate)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run tellraw @s ["\n",{"text":"Fantasy Trident","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Conduit's Touch — Melee grants Conduit Power; thrown deals drown AoE.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Shuriken of Ice (T4 Ornate)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] run tellraw @s ["\n",{"text":"Shuriken of Ice","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Frozen Strike — Melee freezes target; thrown creates a blizzard AoE.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Crucible Trident (T5 Exquisite)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run tellraw @s ["\n",{"text":"Crucible Trident","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Shockwave — Melee knocks back nearby enemies; thrown creates a 4-block explosion.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 6: Mjolnir (T5 Exquisite)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run tellraw @s ["\n",{"text":"Mjolnir","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Lightning Strike — Melee summons a bolt; thrown chains lightning to 3 targets.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 7: Titan's Shroud Trident (T6 Mythical)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run tellraw @s ["\n",{"text":"Titan's Shroud Trident","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Shadow Veil — Melee blinds target and grants Invisibility; thrown teleports to target.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 8: Master Bolt (T6 Mythical)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run tellraw @s ["\n",{"text":"Master Bolt","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Zeus's Touch — Melee deals lightning damage; thrown summons 3 lightning bolts.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
