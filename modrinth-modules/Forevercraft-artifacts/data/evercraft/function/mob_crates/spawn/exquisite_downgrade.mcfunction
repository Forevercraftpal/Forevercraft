# Mob Crates - Downgrade Exquisite → cascade through Ornate gate (Dream Rate < 15)
# Barrel already placed by spawn/exquisite.mcfunction or mythical_downgrade cascade

tellraw @p [{text:"✦ ",color:"dark_purple"},{text:"An exquisite mob crate dimmed... your dreams aren't strong enough yet.",color:"gray",italic:true}]
tellraw @p [{text:"  Requires ",color:"gray"},{text:"Dream Rate 15",color:"gold",bold:true},{text:" for Exquisite mob crates.",color:"gray"}]

# Cascade: check if player qualifies for Ornate (Dream Rate >= 5), otherwise Rare
execute if score @p ec.temp matches 50.. run function evercraft:mob_crates/spawn/ornate_grant
execute unless score @p ec.temp matches 50.. run function evercraft:mob_crates/spawn/ornate_downgrade
