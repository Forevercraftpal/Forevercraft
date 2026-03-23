# Mob Crates - shulker kill (1 in 5 chance)
advancement revoke @s only evercraft:mob_crates/kill/shulker
function evercraft:bestiary/track/on_kill {score:"bs.k_shulker",dscore:"bs.d_shulker",threshold:5000,pow:"#pow3",field:"hi",mob:"shulker",smob:"shulker",group:3}
data modify storage evercraft:mob_crates chance set value "0.1998"
data modify storage evercraft:mob_crates dscore set value "bs.d_shulker"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
