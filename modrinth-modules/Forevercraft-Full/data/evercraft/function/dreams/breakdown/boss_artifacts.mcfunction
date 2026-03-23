# Dream Rate Breakdown — Boss Exclusive Artifacts
# Shows which boss artifact luck modifiers are active on the player

scoreboard players set #dr_any ec.temp 0

# --- Soul Reaver (Hollow King) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:soul_reaver_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Soul Reaver",color:"gray"},{text:"              +1.5",color:"gold"}]

# --- Thornheart Bloom (Verdant Warden) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:thornheart_bloom_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Thornheart Bloom",color:"green"},{text:"         +1.5",color:"gold"}]

# --- Thunderstrike Core (Stormforged) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:thunderstrike_core_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Thunderstrike Core",color:"aqua"},{text:"       +1.5",color:"gold"}]

# --- Abyssal Pearl (Tidecaller) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:abyssal_pearl_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Abyssal Pearl",color:"dark_aqua"},{text:"            +1.5",color:"gold"}]

# --- Earthshaker Core (Earthshaker) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:earthshaker_core_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Earthshaker Core",color:"yellow"},{text:"         +1.5",color:"gold"}]

# --- Nightmare Fragment (Nightmare) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:nightmare_fragment_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Nightmare Fragment",color:"dark_purple"},{text:"       +1.5",color:"gold"}]

# --- Infernal Heart (Infernal Titan) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:infernal_heart_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Infernal Heart",color:"red"},{text:"           +1.5",color:"gold"}]

# --- Soulkeeper's Ember (Soul Warden) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:soulkeepers_ember_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Soulkeeper's Ember",color:"dark_gray"},{text:"       +1.5",color:"gold"}]

# --- Behemoth's Heart (Crimson Behemoth) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:behemoths_heart_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Behemoth's Heart",color:"dark_red"},{text:"         +1.5",color:"gold"}]

# --- Void Sovereign's Eye (Void Sovereign) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:void_sovereigns_eye_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Void Sovereign's Eye",color:"dark_purple"},{text:"     +2.0",color:"gold"}]

# --- Architect's Design (Ender Architect) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:architects_design_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"red"},{text:"Boss Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Architect's Design",color:"light_purple"},{text:"       +2.0",color:"gold"}]
