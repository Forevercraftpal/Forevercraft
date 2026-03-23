# Dream Rate Breakdown — World Events
# Shows active world event DR bonuses

scoreboard players set #dr_any ec.temp 0

# --- Starfall ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_we_starfall 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Starfall",color:"yellow"},{text:"                 +2.0",color:"gold"}]

# --- The Dreaming ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_we_dreaming 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    The Dreaming",color:"light_purple"},{text:"            +10.0",color:"gold"}]

# --- Abyssal Tremor ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_we_abyssal 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Abyssal Tremor",color:"dark_aqua"},{text:"           +1.5",color:"gold"}]

# --- Aurora Bloom (base) ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_we_aurora 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Aurora Bloom",color:"green"},{text:"             +0.5",color:"gold"}]

# --- Aurora Bloom (biome bonus) ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_we_aurora_biome 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Aurora Bloom (Biome)",color:"#55FF55"},{text:"      +3.0",color:"gold"}]

# --- Rift Echo ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_we_rift_echo 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Rift Echo",color:"dark_purple"},{text:"               +2.0",color:"gold"}]

# --- Harmonic Convergence ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_convergence 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"gold"},{text:"World Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Harmonic Convergence",color:"light_purple"},{text:"     +2.0",color:"gold"}]
