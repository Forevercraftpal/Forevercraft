# Fountain of Eternal Dreams — Gacha System Init
# Called from evercraft:init

# === FOREVER COIN ECONOMY ===
scoreboard objectives add ec.coins dummy "Forever Coins"
scoreboard objectives add ec.dreamdust dummy "Dreamdust"

# === PITY / PULL TRACKING ===
scoreboard objectives add ec.wish_pity dummy "Pity Counter (10)"
scoreboard objectives add ec.wish_soft dummy "Soft Pity Counter (30)"
scoreboard objectives add ec.wish_spark dummy "Spark Counter (50)"
scoreboard objectives add ec.wish_total dummy "Lifetime Pulls"

# === GACHA CONSTANTS ===
scoreboard players set #5 ec.const 5
scoreboard players set #10 ec.const 10
scoreboard players set #30 ec.const 30
scoreboard players set #50 ec.const 50
scoreboard players set #1000 ec.const 1000

# === CONVERGENCE EVENT FLAG ===
# #gacha_convergence ec.var: 0 = normal, 1 = Convergence of Dreams active (half-price)
execute unless score #gacha_convergence ec.var matches 0.. run scoreboard players set #gacha_convergence ec.var 0

# === HERO SET SCOREBOARD ===
scoreboard objectives add ec.hero dummy "Hero Set Pieces"
scoreboard objectives add ec.hero_cd dummy "Hero Dance Cooldown"

# === CONSTELLATION FRAGMENTS ===
scoreboard objectives add ec.const_frag dummy "Constellation Fragments"

# === FIRST COIN ACHIEVEMENT FLAG ===
scoreboard objectives add ec.first_coin dummy "First Coin Flag"

# === WISHING COIN BONUS ===
scoreboard objectives add ec.wish_bonus dummy "Bonus Pulls"

# === FOUNTAIN LIMIT ===
scoreboard objectives add ec.fountains dummy "Fountains Owned"

# === GACHA INFO BROWSER ===
scoreboard objectives add ec.gacha_page dummy "Gacha Info Page"
scoreboard objectives add ec.gi_idle dummy "Gacha Info Inactivity"

# === FOUNTAIN MENU ===
scoreboard objectives add ec.gf_idle dummy "Fountain Menu Inactivity"

# === REEL ANIMATION ===
scoreboard objectives add ec.reel_tick dummy "Reel Tick"
scoreboard objectives add ec.reel_tier dummy "Reel Tier"
scoreboard objectives add ec.reel_count dummy "Reel Remaining"
scoreboard objectives add ec.reel_pull dummy "Reel Pull Number"
scoreboard objectives add ec.reel_sub dummy "Reel Sub-Reward"
scoreboard players set #2 ec.const 2
scoreboard players set #3 ec.const 3
