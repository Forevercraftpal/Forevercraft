# Classes Detail — Dancer Gauntlets (Macro)
# Macro arg: slot (0-6)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Mauler (Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/mauler=true}] run tellraw @s ["\n",{text:"Mauler",color:"white",bold:true},"\n",{text:"Tier: Common",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Basic gauntlet with 2.5% heal chance on hit.",color:"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/mauler=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 1: Dust Storm (Uncommon)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] run tellraw @s ["\n",{text:"Dust Storm",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"5% heal chance on hit per gauntlet.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 2: Plate Knuckle (Rare)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] run tellraw @s ["\n",{text:"Plate Knuckle",color:"aqua",bold:true},"\n",{text:"Tier: Rare",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"7.5% heal chance on hit per gauntlet.",color:"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 3: Golden Gauntlet (Ornate)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run tellraw @s ["\n",{text:"Golden Gauntlet",color:"dark_purple",bold:true},"\n",{text:"Tier: Ornate",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Uppercut — Knocks targets 3 blocks upward on hit.",color:"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 4: Order of the Stone Gauntlet (Exquisite)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] run tellraw @s ["\n",{text:"Order of the Stone Gauntlet",color:"light_purple",bold:true},"\n",{text:"Tier: Exquisite",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"12.5% heal chance on hit per gauntlet.",color:"light_purple"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 5: Prismarine Gauntlet (Mythical)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run tellraw @s ["\n",{text:"Prismarine Gauntlet",color:"gold",bold:true},"\n",{text:"Tier: Mythical",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Ocean Strike — Grants Conduit Power for 10s in rain or water.",color:"gold"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 6: Red Gauntlet (Mythical)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] run tellraw @s ["\n",{text:"Red Gauntlet",color:"gold",bold:true},"\n",{text:"Tier: Mythical",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"15% heal chance on hit per gauntlet.",color:"gold"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
