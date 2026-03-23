# Add cooldown entry targeting guild B
# Run as: guild A marker
# $(target_b) $(available_at)
$data modify entity @s data.cooldowns append value {target_id:$(target_b),available_at:$(available_at)}
