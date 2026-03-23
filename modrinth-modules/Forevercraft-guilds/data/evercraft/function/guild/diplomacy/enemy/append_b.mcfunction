# Guild Diplomacy — Append enemy entry (guild B) to this marker
# Run as: guild A marker
# $(guild_b) $(expires_at)
$data modify entity @s data.enemies append value {id:$(guild_b),expires_at:$(expires_at)}
