# Dream Rate Breakdown — Calendar Events
# Shows active calendar event DR bonuses

scoreboard players set #dr_any ec.temp 0

# --- Harvest Festival ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_cal_harvest 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#DDA15E"},{text:"Calendar Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Harvest Festival",color:"yellow"},{text:"          +1.5",color:"gold"}]

# --- Prosperity Tide ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_cal_prosperity 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#DDA15E"},{text:"Calendar Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Prosperity Tide",color:"aqua"},{text:"           +1.0",color:"gold"}]

# --- Fishing Derby ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_cal_derby 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#DDA15E"},{text:"Calendar Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Fishing Derby",color:"blue"},{text:"             +0.5",color:"gold"}]

# --- Dimensional Rift ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_cal_rift 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#DDA15E"},{text:"Calendar Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Dimensional Rift",color:"dark_purple"},{text:"          +1.0",color:"gold"}]

# --- Blood Moon ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_cal_blood 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#DDA15E"},{text:"Calendar Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Blood Moon",color:"dark_red"},{text:"               +1.0",color:"gold"}]

# --- Meteor Shower ---
execute store success score #has ec.temp run attribute @s luck modifier value get ec_cal_meteor 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"#DDA15E"},{text:"Calendar Events:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Meteor Shower",color:"yellow"},{text:"             +0.5",color:"gold"}]
