# Classes Detail — Beastlord Spears (Macro)
# Macro arg: slot (0-8)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Bone Club (T1 Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run tellraw @s ["\n",{"text":"Bone Club","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ability details coming soon.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Lance (T2 Uncommon)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/lance=true}] run tellraw @s ["\n",{"text":"Lance","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ability details coming soon.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/lance=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Battlestaff (T3 Rare)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run tellraw @s ["\n",{"text":"Battlestaff","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ability details coming soon.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Bone Cudgel (T3 Rare)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run tellraw @s ["\n",{"text":"Bone Cudgel","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ability details coming soon.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Glaive (T4 Ornate)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run tellraw @s ["\n",{"text":"Glaive","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ability details coming soon.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Infinity Lance (T5 Exquisite)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run tellraw @s ["\n",{"text":"Infinity Lance","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Extended Reach — +12 attack damage and +2 entity reach.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 6: Gungnir Spear (T5 Exquisite)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run tellraw @s ["\n",{"text":"Gungnir Spear","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Ability details coming soon.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 7: Longinus (T6 Mythical)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run tellraw @s ["\n",{"text":"Longinus","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Death Prevention — Your companion saves you from lethal damage with a totem-like revival.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 8: Dragonslayer Lance (T6 Mythical)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run tellraw @s ["\n",{"text":"Dragonslayer Lance","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Dragon Pierce — Aura, Warp Strike, Rally Cry. Set: Journey.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
