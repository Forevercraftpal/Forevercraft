# Dream Rate Breakdown — Armor Trim Bonuses
# Amethyst: +0.25 per piece | Netherite: +0.5 per piece

scoreboard players set #dr_any ec.temp 0

# --- Amethyst Trim (Helmet) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:amethyst_head_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Amethyst (Helmet)",color:"light_purple"},{text:"      +0.25",color:"gold"}]

# --- Amethyst Trim (Chestplate) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:amethyst_chest_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Amethyst (Chestplate)",color:"light_purple"},{text:"  +0.25",color:"gold"}]

# --- Amethyst Trim (Leggings) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:amethyst_legs_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Amethyst (Leggings)",color:"light_purple"},{text:"    +0.25",color:"gold"}]

# --- Amethyst Trim (Boots) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:amethyst_feet_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Amethyst (Boots)",color:"light_purple"},{text:"       +0.25",color:"gold"}]

# --- Netherite Trim (Helmet) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:netherite_head_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Netherite (Helmet)",color:"dark_gray"},{text:"      +0.5",color:"gold"}]

# --- Netherite Trim (Chestplate) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:netherite_chest_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Netherite (Chestplate)",color:"dark_gray"},{text:"  +0.5",color:"gold"}]

# --- Netherite Trim (Leggings) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:netherite_legs_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Netherite (Leggings)",color:"dark_gray"},{text:"    +0.5",color:"gold"}]

# --- Netherite Trim (Boots) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:netherite_feet_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Armor Trims:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Netherite (Boots)",color:"dark_gray"},{text:"       +0.5",color:"gold"}]
