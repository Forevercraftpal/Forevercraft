# Mob Crates - parrot kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/parrot
data modify storage evercraft:mob_crates chance set value "0.012"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
