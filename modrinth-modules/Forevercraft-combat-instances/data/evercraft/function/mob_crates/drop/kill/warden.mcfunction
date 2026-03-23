# Mob Crates - warden kill (100% chance)
advancement revoke @s only evercraft:mob_crates/kill/warden
function evercraft:bestiary/track/on_kill {score:"bs.k_warden",dscore:"bs.d_warden",threshold:100,pow:"#pow12",field:"hi",mob:"warden",smob:"warden",group:4}
data modify storage evercraft:mob_crates chance set value "1.0"
data modify storage evercraft:mob_crates dscore set value "bs.d_warden"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
