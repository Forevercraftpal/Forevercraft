# Classes Detail — Rogue Daggers (Macro)
# Macro arg: slot (0-11)
# Run as the player

# Store slot
$scoreboard players set #cls_slot ec.temp $(slot)

# Slot 0: Dagger (Common)
execute if score #cls_slot ec.temp matches 0 if entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run tellraw @s ["\n",{text:"Dagger",color:"white",bold:true},"\n",{text:"Tier: Common",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Basic auto-swing, no special effect.",color:"white"},"\n"]
execute if score #cls_slot ec.temp matches 0 unless entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 1: Hellenic Sword (Common)
execute if score #cls_slot ec.temp matches 1 if entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] run tellraw @s ["\n",{text:"Hellenic Sword",color:"white",bold:true},"\n",{text:"Tier: Common",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Agile — +5% movement speed while held.",color:"white"},"\n"]
execute if score #cls_slot ec.temp matches 1 unless entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 2: Hidden Blade (Uncommon)
execute if score #cls_slot ec.temp matches 2 if entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run tellraw @s ["\n",{text:"Hidden Blade",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Lifesteal — Heals 1 HP per swing.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 2 unless entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 3: Coral Blade (Uncommon)
execute if score #cls_slot ec.temp matches 3 if entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run tellraw @s ["\n",{text:"Coral Blade",color:"dark_blue",bold:true},"\n",{text:"Tier: Uncommon",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Toxic Edge — Wither I for 2s on hit.",color:"dark_blue"},"\n"]
execute if score #cls_slot ec.temp matches 3 unless entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 4: Fang of Frost (Rare)
execute if score #cls_slot ec.temp matches 4 if entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run tellraw @s ["\n",{text:"Fang of Frost",color:"aqua",bold:true},"\n",{text:"Tier: Rare",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Freeze — Slowness III for 2s on hit.",color:"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 4 unless entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 5: Heartstealer (Rare)
execute if score #cls_slot ec.temp matches 5 if entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run tellraw @s ["\n",{text:"Heartstealer",color:"aqua",bold:true},"\n",{text:"Tier: Rare",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Precision Strike — 25% chance for bonus 4 damage.",color:"aqua"},"\n"]
execute if score #cls_slot ec.temp matches 5 unless entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 6: Void-Touched Blade (Ornate)
execute if score #cls_slot ec.temp matches 6 if entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run tellraw @s ["\n",{text:"Void-Touched Blade",color:"dark_purple",bold:true},"\n",{text:"Tier: Ornate",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Void Strike — 15% chance to levitate target for 1s.",color:"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 6 unless entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 7: The Soul Mirror (Ornate)
execute if score #cls_slot ec.temp matches 7 if entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run tellraw @s ["\n",{text:"The Soul Mirror",color:"dark_purple",bold:true},"\n",{text:"Tier: Ornate",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Soul Drain — Darkness on targets, Strength I to self.",color:"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 7 unless entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 8: The Beginning and The End (Exquisite)
execute if score #cls_slot ec.temp matches 8 if entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run tellraw @s ["\n",{text:"The Beginning and The End",color:"light_purple",bold:true},"\n",{text:"Tier: Exquisite",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Duality — Alternates fire and frost each swing.",color:"light_purple"},"\n",{text:"Passive: +15% movement speed",color:"dark_aqua"},"\n"]
execute if score #cls_slot ec.temp matches 8 unless entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 9: Nameless Blade (Exquisite)
execute if score #cls_slot ec.temp matches 9 if entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run tellraw @s ["\n",{text:"Nameless Blade",color:"light_purple",bold:true},"\n",{text:"Tier: Exquisite",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Shadow Strike — 20% chance for Invisibility 1s.",color:"light_purple"},"\n",{text:"Passive: +15% movement speed",color:"dark_aqua"},"\n"]
execute if score #cls_slot ec.temp matches 9 unless entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 10: Ender Dragon Blade (Mythical)
execute if score #cls_slot ec.temp matches 10 if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run tellraw @s ["\n",{text:"Ender Dragon Blade",color:"gold",bold:true},"\n",{text:"Tier: Mythical",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Dragon's Edge — Weakness I for 3s on hit.",color:"gold"},"\n",{text:"Passive: +20% movement speed",color:"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 10 unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

# Slot 11: Zantetsuken (Mythical)
execute if score #cls_slot ec.temp matches 11 if entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run tellraw @s ["\n",{text:"Zantetsuken",color:"gold",bold:true},"\n",{text:"Tier: Mythical",color:"gray"},"\n",{text:"Ability: ",color:"white"},{text:"Iai Strike — Hits ALL enemies in range, no target limit.",color:"gold"},"\n",{text:"Passive: +20% movement speed",color:"dark_purple"},"\n"]
execute if score #cls_slot ec.temp matches 11 unless entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run tellraw @s {text:"Discover this artifact to learn more.",color:"dark_gray",italic:true}

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
