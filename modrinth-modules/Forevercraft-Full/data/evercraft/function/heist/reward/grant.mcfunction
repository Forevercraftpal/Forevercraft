# Black Market Heist — Grant Rewards
# Gives guaranteed Contraband Crate + 2-3 bonus gacha-style rolls

# === GUARANTEED: CONTRABAND CRATE ===
loot give @s loot evercraft:heist/contraband_crate

tellraw @s [{text:"  \u2726 ",color:"dark_red"},{text:"Contraband Crate",color:"red",bold:true},{text:" obtained!",color:"gray"}]

# === COIN REWARD ===
function evercraft:coins/heist_reward

# === BONUS ROLLS (2-3 random gacha items) ===
execute store result score #heist_bonus_count ec.temp run random value 2..3
function evercraft:heist/reward/roll_bonus
