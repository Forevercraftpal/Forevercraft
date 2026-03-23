# Classes Detail — Tank Shields (Macro)
# Macro arg: slot (0-8)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Deku Shield (T1 Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run tellraw @s ["\n",{"text":"Deku Shield","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Forest's Vigor — Knight ability grants Haste II for 4 seconds.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Tower Shield (T3 Rare)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run tellraw @s ["\n",{"text":"Tower Shield","color":"blue","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Fortify — Knight ability grants Resistance II and Slowness I for 5 seconds.","color":"blue"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Dragonslayer Shield (T5 Exquisite)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run tellraw @s ["\n",{"text":"Dragonslayer Shield","color":"aqua","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Dragon's Breath — Knight ability deals fire AoE and grants Fire Resistance.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Astract (T6 Mythical)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run tellraw @s ["\n",{"text":"Astract","color":"light_purple","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Paladin's Grace — Knight ability heals you and nearby allies.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Order of the Stone Shield (T6 Mythical)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run tellraw @s ["\n",{"text":"Order of the Stone Shield","color":"light_purple","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Goliath's Fury — Knight ability grants Haste III for 5 seconds.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Ellegaard's Shield (T6 Mythical)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run tellraw @s ["\n",{"text":"Ellegaard's Shield","color":"light_purple","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Admin Override — Knight ability grants Strength II and Speed II for 4 seconds.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 6: Drowned King Shield (T3 Rare)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] run tellraw @s ["\n",{"text":"Drowned King Shield","color":"blue","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Tidal Curse — Knight ability slows nearby enemies and grants Conduit Power.","color":"blue"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 7: Trial Shield (T1 Common)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] run tellraw @s ["\n",{"text":"Trial Shield","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Challenger's Resolve — Knight ability grants Absorption II for 6 seconds.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 8: Ocean Tower Shield (T3 Rare)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] run tellraw @s ["\n",{"text":"Ocean Tower Shield","color":"blue","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Fortify — Knight ability grants Resistance II and Slowness I for 5 seconds.","color":"blue"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
