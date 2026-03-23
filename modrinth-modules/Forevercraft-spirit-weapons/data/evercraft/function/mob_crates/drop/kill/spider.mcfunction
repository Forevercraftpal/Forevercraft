# Mob Crates - spider kill (1 in 33 chance)
advancement revoke @s only evercraft:mob_crates/kill/spider
function evercraft:bestiary/track/on_kill {score:"bs.k_spider",dscore:"bs.d_spider",threshold:5000,pow:"#pow7",field:"hi",mob:"spider",smob:"spider",group:1}
data modify storage evercraft:mob_crates chance set value "0.03"
data modify storage evercraft:mob_crates dscore set value "bs.d_spider"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
