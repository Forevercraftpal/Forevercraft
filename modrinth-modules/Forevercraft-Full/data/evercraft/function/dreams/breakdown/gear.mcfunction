# Dream Rate Breakdown — Gear (Intrinsic Item Luck)
# Fishing armor and mythical set armor pieces have +0.5 luck baked into the item
# Header prints on first hit via #dr_any check

scoreboard players set #dr_any ec.temp 0

# === Fishing Armor (+0.5 each) ===
execute if items entity @s armor.head *[custom_data~{artifact:"fishing_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"fishing_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"fishing_helmet"}] run tellraw @s [{text:"    Fishing Helmet",color:"blue"},{text:"           +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"fishing_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"fishing_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"fishing_chestplate"}] run tellraw @s [{text:"    Fishing Chestplate",color:"blue"},{text:"       +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"fishing_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"fishing_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"fishing_leggings"}] run tellraw @s [{text:"    Fishing Leggings",color:"blue"},{text:"         +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"fishing_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"fishing_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"fishing_boots"}] run tellraw @s [{text:"    Fishing Boots",color:"blue"},{text:"            +0.5",color:"gold"}]

# === Mythical Set Armor (+0.5 each piece) ===
# Dragonmaster
execute if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] run tellraw @s [{text:"    Dragonmaster Helmet",color:"light_purple"},{text:"      +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"dragonmaster_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"dragonmaster_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"dragonmaster_chestplate"}] run tellraw @s [{text:"    Dragonmaster Chest",color:"light_purple"},{text:"       +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"dragonmaster_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"dragonmaster_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"dragonmaster_leggings"}] run tellraw @s [{text:"    Dragonmaster Legs",color:"light_purple"},{text:"        +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"dragonmaster_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"dragonmaster_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"dragonmaster_boots"}] run tellraw @s [{text:"    Dragonmaster Boots",color:"light_purple"},{text:"       +0.5",color:"gold"}]

# Titan
execute if items entity @s armor.head *[custom_data~{artifact:"titan_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"titan_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"titan_helmet"}] run tellraw @s [{text:"    Titan Helmet",color:"light_purple"},{text:"             +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"titan_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"titan_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"titan_chestplate"}] run tellraw @s [{text:"    Titan Chestplate",color:"light_purple"},{text:"         +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"titan_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"titan_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"titan_leggings"}] run tellraw @s [{text:"    Titan Leggings",color:"light_purple"},{text:"           +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"titan_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"titan_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"titan_boots"}] run tellraw @s [{text:"    Titan Boots",color:"light_purple"},{text:"              +0.5",color:"gold"}]

# Verdant
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] run tellraw @s [{text:"    Verdant Helmet",color:"light_purple"},{text:"           +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] run tellraw @s [{text:"    Verdant Chestplate",color:"light_purple"},{text:"       +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] run tellraw @s [{text:"    Verdant Leggings",color:"light_purple"},{text:"         +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"verdant_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"verdant_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"verdant_boots"}] run tellraw @s [{text:"    Verdant Boots",color:"light_purple"},{text:"            +0.5",color:"gold"}]

# Infernal
execute if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] run tellraw @s [{text:"    Infernal Helmet",color:"light_purple"},{text:"          +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"infernal_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"infernal_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"infernal_chestplate"}] run tellraw @s [{text:"    Infernal Chestplate",color:"light_purple"},{text:"      +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] run tellraw @s [{text:"    Infernal Leggings",color:"light_purple"},{text:"        +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"infernal_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"infernal_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"infernal_boots"}] run tellraw @s [{text:"    Infernal Boots",color:"light_purple"},{text:"           +0.5",color:"gold"}]

# Ender Dragon
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run tellraw @s [{text:"    Ender Dragon Helmet",color:"light_purple"},{text:"      +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"ender_dragon_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"ender_dragon_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"ender_dragon_chestplate"}] run tellraw @s [{text:"    Ender Dragon Chest",color:"light_purple"},{text:"       +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] run tellraw @s [{text:"    Ender Dragon Legs",color:"light_purple"},{text:"        +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"ender_dragon_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"ender_dragon_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"ender_dragon_boots"}] run tellraw @s [{text:"    Ender Dragon Boots",color:"light_purple"},{text:"       +0.5",color:"gold"}]

# Journey
execute if items entity @s armor.head *[custom_data~{artifact:"journey_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"journey_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"journey_helmet"}] run tellraw @s [{text:"    Journey Helmet",color:"light_purple"},{text:"           +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"journey_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"journey_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"journey_chestplate"}] run tellraw @s [{text:"    Journey Chestplate",color:"light_purple"},{text:"       +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"journey_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"journey_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"journey_leggings"}] run tellraw @s [{text:"    Journey Leggings",color:"light_purple"},{text:"         +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"journey_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"journey_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"journey_boots"}] run tellraw @s [{text:"    Journey Boots",color:"light_purple"},{text:"            +0.5",color:"gold"}]

# Spelunker
execute if items entity @s armor.head *[custom_data~{artifact:"spelunker_helmet"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.head *[custom_data~{artifact:"spelunker_helmet"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.head *[custom_data~{artifact:"spelunker_helmet"}] run tellraw @s [{text:"    Spelunker Helmet",color:"light_purple"},{text:"         +0.5",color:"gold"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"spelunker_chestplate"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.chest *[custom_data~{artifact:"spelunker_chestplate"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.chest *[custom_data~{artifact:"spelunker_chestplate"}] run tellraw @s [{text:"    Spelunker Chestplate",color:"light_purple"},{text:"     +0.5",color:"gold"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"spelunker_leggings"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.legs *[custom_data~{artifact:"spelunker_leggings"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.legs *[custom_data~{artifact:"spelunker_leggings"}] run tellraw @s [{text:"    Spelunker Leggings",color:"light_purple"},{text:"       +0.5",color:"gold"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"spelunker_boots"}] if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Gear:",color:"gray"}]
execute if items entity @s armor.feet *[custom_data~{artifact:"spelunker_boots"}] run scoreboard players set #dr_any ec.temp 1
execute if items entity @s armor.feet *[custom_data~{artifact:"spelunker_boots"}] run tellraw @s [{text:"    Spelunker Boots",color:"light_purple"},{text:"          +0.5",color:"gold"}]
