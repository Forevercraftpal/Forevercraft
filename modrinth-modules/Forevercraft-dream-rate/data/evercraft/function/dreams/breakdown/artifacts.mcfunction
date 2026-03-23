# Dream Rate Breakdown — Artifact Passive Modifiers
# Shows which artifact luck modifiers are active on the player

scoreboard players set #dr_any ec.temp 0

# --- Pebble of Dreams ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:pebble_of_dreams_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Pebble of Dreams",color:"green"},{text:"        +1.0",color:"gold"}]

# --- Diamond Ring ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:diamond_ring_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Diamond Ring",color:"blue"},{text:"             +1.0",color:"gold"}]

# --- Ruin Watch ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:ruin_watch_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Ruin Watch",color:"blue"},{text:"               +1.0",color:"gold"}]

# --- Miner's Lantern ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:miners_lantern_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Miner's Lantern",color:"yellow"},{text:"         +1.0",color:"gold"}]

# --- Merchant's Coin ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:merchants_coin_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Merchant's Coin",color:"yellow"},{text:"         +1.0",color:"gold"}]

# --- Angler's Pearl ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:anglers_pearl_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Angler's Pearl",color:"yellow"},{text:"          +1.0",color:"gold"}]

# --- Enchanted Monocle ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:enchanted_monocle_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Enchanted Monocle",color:"yellow"},{text:"       +1.0",color:"gold"}]

# --- Ring of Undying ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:ring_of_undying_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Ring of Undying",color:"aqua"},{text:"          +1.0",color:"gold"}]

# --- Claude's Eye ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:claudes_eye_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Claude's Eye",color:"aqua"},{text:"             +1.0",color:"gold"}]

# --- Sculk Heart ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:sculk_heart_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Sculk Heart",color:"aqua"},{text:"              +2.0",color:"gold"}]

# --- Trial Ring ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:trial_ring_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Trial Ring",color:"yellow"},{text:"               +2.0",color:"gold"}]

# --- Codex of Everything ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:codex_of_everything_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Codex of Everything",color:"light_purple"},{text:"     +3.0",color:"gold"}]

# --- Beacon of Ancients ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:beacon_of_ancients_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Beacon of Ancients",color:"light_purple"},{text:"      +3.0",color:"gold"}]

# --- Netherite Nexus ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:netherite_nexus_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Netherite Nexus",color:"light_purple"},{text:"          +4.0",color:"gold"}]

# --- Claude's Gift ---
execute store success score #has ec.temp run attribute @s luck modifier value get evercraft:claudes_gift_luck 10
execute if score #has ec.temp matches 1 if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Artifacts:",color:"gray"}]
execute if score #has ec.temp matches 1 run scoreboard players set #dr_any ec.temp 1
execute if score #has ec.temp matches 1 run tellraw @s [{text:"    Claude's Gift",color:"light_purple"},{text:"            +5.0",color:"gold"}]
