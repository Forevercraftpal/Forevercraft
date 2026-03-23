# Dream Rate Breakdown — Party & Multiplayer Bonuses
# Shows party proximity and tidal network DR bonuses

scoreboard players set #dr_any ec.temp 0

# --- Party Proximity (use score to determine exact display value) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:party_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"aqua"},{text:"Party Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 if score @s ec.party_nearby matches 1 run tellraw @s [{text:"    Party Nearby (1)",color:"aqua"},{text:"        +0.25",color:"gold"}]
execute if score #has ec.temp matches 1 if score @s ec.party_nearby matches 2 run tellraw @s [{text:"    Party Nearby (2)",color:"aqua"},{text:"        +0.50",color:"gold"}]
execute if score #has ec.temp matches 1 if score @s ec.party_nearby matches 3.. run tellraw @s [{text:"    Party Nearby (3+)",color:"aqua"},{text:"       +0.75",color:"gold"}]

# --- Tidal Network (party combo) ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:tidal_network 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"aqua"},{text:"Party Bonuses:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Tidal Network",color:"dark_aqua"},{text:"            +1.0",color:"gold"}]
