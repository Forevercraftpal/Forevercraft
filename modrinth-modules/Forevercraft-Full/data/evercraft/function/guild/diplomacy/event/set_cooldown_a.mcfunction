# Add cooldown entry targeting guild A
# Run as: guild B marker
# $(target_a) $(available_at)
$data modify entity @s data.cooldowns append value {target_id:$(target_a),available_at:$(available_at)}
