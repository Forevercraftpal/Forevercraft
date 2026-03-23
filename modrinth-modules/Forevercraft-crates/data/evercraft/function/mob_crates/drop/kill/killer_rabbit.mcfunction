# Mob Crates - killer rabbit kill (1 in 20 chance, elite)
advancement revoke @s only evercraft:mob_crates/kill/killer_rabbit
data modify storage evercraft:mob_crates chance set value "0.3"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
