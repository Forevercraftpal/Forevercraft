# Guild Diplomacy — Append enemy entry (guild A) to this marker
# Run as: guild B marker
# $(guild_a) $(expires_at)
$data modify entity @s data.enemies append value {id:$(guild_a),expires_at:$(expires_at)}
