# Artifact Transmutation System — Load
# Place a Transmutation Stand (lodestone) → right-click to open GUI
# Sacrifice artifacts of same tier to receive one of the next tier
# Cost: 5 Common/Uncommon, 4 Rare/Ornate, 3 Exquisite
# Artificer nearby = -1 cost (once per day)

# Per-player state
scoreboard objectives add tx.count dummy "Transmute Deposited Count"
scoreboard objectives add tx.tier dummy "Transmute Deposited Tier (1-5)"
scoreboard objectives add tx.required dummy "Transmute Required Count"
scoreboard objectives add tx.temp dummy "Transmute Temp"
scoreboard objectives add tx.disc_day dummy "Transmute Discount Last Used Day"
scoreboard objectives add tx.has_disc dummy "Transmute Discount Available"
scoreboard objectives add tx.dep_conf trigger "Transmute Deposit Confirm"
scoreboard objectives add tx.menu_time dummy "Transmute Menu Inactivity"
scoreboard objectives add tx.half dummy "Transmute Half-Count (Awakening Stones)"

# Initialize storage for macro/temp operations
data modify storage evercraft:transmute temp set value {}

# Initialize sessions storage (preserves existing data across reloads)
execute unless data storage evercraft:transmute sessions run data modify storage evercraft:transmute sessions set value {}

# Bootstrap tick schedule
schedule function evercraft:transmute/tick 1s replace
