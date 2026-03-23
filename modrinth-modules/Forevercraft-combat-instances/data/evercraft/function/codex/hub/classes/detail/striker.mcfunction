# Classes Detail — Striker Maces (Macro)
# Macro arg: slot (0-13)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Highland Mace (T1 Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run tellraw @s ["\n",{"text":"Highland Mace","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"No special ability.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 1: Plunger (T1 Common)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run tellraw @s ["\n",{"text":"Plunger","color":"white","bold":true},"\n",{"text":"Tier: Common","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"No special ability.","color":"white"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 2: Frying Pan (T2 Uncommon)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] run tellraw @s ["\n",{"text":"Frying Pan","color":"dark_blue","bold":true},"\n",{"text":"Tier: Uncommon","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"No special ability.","color":"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 3: Combat Mace (T3 Rare)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run tellraw @s ["\n",{"text":"Combat Mace","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Shield Break — Strips Resistance and applies Weakness II.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 4: Hammer of Gravity (T3 Rare)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run tellraw @s ["\n",{"text":"Hammer of Gravity","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"AoE Knockback — Blasts nearby enemies away in a 4-block radius.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 5: Mjolnir (T3 Rare)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run tellraw @s ["\n",{"text":"Mjolnir","color":"aqua","bold":true},"\n",{"text":"Tier: Rare","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Lightning Smash — Summons a lightning bolt on the struck target.","color":"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 6: Pwnhammer (T4 Ornate)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run tellraw @s ["\n",{"text":"Pwnhammer","color":"dark_purple","bold":true},"\n",{"text":"Tier: Ornate","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Explosive Impact — 25% chance to create a 3-block explosion on hit.","color":"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 7: Dev Hammer (T5 Exquisite)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run tellraw @s ["\n",{"text":"Dev Hammer","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Divine Judgment — 33% chance to strike lightning and launch the target.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 8: Dragonheart Mace (T5 Exquisite)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run tellraw @s ["\n",{"text":"Dragonheart Mace","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Inferno Smash — Ignites the target and deals fire AoE in a 3-block radius.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 9: Mace of Legends (T5 Exquisite)
execute if score #cls_slot ec.temp matches 9 if entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run tellraw @s ["\n",{"text":"Mace of Legends","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Legendary Smash — Deals 4 damage in a 5-block AoE with Slowness II.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 9 unless entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 10: Stormlander (T5 Exquisite)
execute if score #cls_slot ec.temp matches 10 if entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run tellraw @s ["\n",{"text":"Stormlander","color":"light_purple","bold":true},"\n",{"text":"Tier: Exquisite","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Chain Lightning — 50% chance to chain a lightning bolt to 3 nearby targets.","color":"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 10 unless entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 11: Portal Staff (T6 Mythical)
execute if score #cls_slot ec.temp matches 11 if entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run tellraw @s ["\n",{"text":"Portal Staff","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"Explosive Impact — Creates devastating explosions on hit.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 11 unless entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 12: Void Voyage (T6 Mythical)
execute if score #cls_slot ec.temp matches 12 if entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run tellraw @s ["\n",{"text":"Void Voyage","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"No special ability.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 12 unless entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Slot 13: Comet on a Stick (T6 Mythical)
execute if score #cls_slot ec.temp matches 13 if entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] run tellraw @s ["\n",{"text":"Comet on a Stick","color":"gold","bold":true},"\n",{"text":"Tier: Mythical","color":"gray"},"\n",{"text":"Ability: ","color":"white"},{"text":"No special ability.","color":"gold"},"\n"]
execute if score #cls_slot ec.temp matches 13 unless entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
