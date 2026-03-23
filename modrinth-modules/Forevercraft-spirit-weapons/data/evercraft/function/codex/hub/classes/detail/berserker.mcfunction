# Classes Detail — Berserker Axes (Macro)
# Macro arg: slot (0-10)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Highland Axe (Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] run tellraw @s ["\n",{text:"Highland Axe",color:"white",bold:true},"\n",{text:"Tier: Common",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 1: Double Axe (Uncommon)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] run tellraw @s ["\n",{text:"Double Axe",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 2: Fantasy Axe (Uncommon)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] run tellraw @s ["\n",{text:"Fantasy Axe",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 3: Anchor (Uncommon)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/anchor=true}] run tellraw @s ["\n",{text:"Anchor",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/anchor=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 4: Morning Star (Uncommon)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] run tellraw @s ["\n",{text:"Morning Star",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 5: Axeblade (Rare)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run tellraw @s ["\n",{text:"Axeblade",color:"aqua",bold:true},"\n",{text:"Tier: Rare",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 6: Leviathan Axe (Exquisite)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run tellraw @s ["\n",{text:"Leviathan Axe",color:"light_purple",bold:true},"\n",{text:"Tier: Exquisite",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 7: Starfall Axe (Exquisite)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run tellraw @s ["\n",{text:"Starfall Axe",color:"light_purple",bold:true},"\n",{text:"Tier: Exquisite",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 8: Whirlwind (Exquisite)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run tellraw @s ["\n",{text:"Whirlwind",color:"light_purple",bold:true},"\n",{text:"Tier: Exquisite",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 9: Axe of Honor (Mythical)
execute if score #cls_slot ec.temp matches 9 if entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run tellraw @s ["\n",{text:"Axe of Honor",color:"gold",bold:true},"\n",{text:"Tier: Mythical",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"gold"},"\n"]
execute if score #cls_slot ec.temp matches 9 unless entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 10: Dragonslayer Axe (Mythical)
execute if score #cls_slot ec.temp matches 10 if entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run tellraw @s ["\n",{text:"Dragonslayer Axe",color:"gold",bold:true},"\n",{text:"Tier: Mythical",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ability details coming soon.",color:"gold"},"\n"]
execute if score #cls_slot ec.temp matches 10 unless entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
