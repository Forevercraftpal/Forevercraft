# Mob Crates - Downgrade Mythical → cascade through Exquisite gate (Dream Rate < 25)
tellraw @p [{text:"★ ",color:"gold"},{text:"A mythical mob crate flickered but dimmed... your dreams aren't powerful enough.",color:"gray",italic:true}]
tellraw @p [{text:"  Requires ",color:"gray"},{text:"Dream Rate 25",color:"gold",bold:true},{text:" for Mythical mob crates.",color:"gray"}]
playsound minecraft:block.amethyst_block.break master @p ~ ~ ~ 1 0.3

# Cascade: check if player qualifies for Exquisite (Dream Rate >= 15), otherwise Ornate
execute if score @p ec.temp matches 150.. run function evercraft:mob_crates/spawn/exquisite_grant
execute unless score @p ec.temp matches 150.. run function evercraft:mob_crates/spawn/exquisite_downgrade
