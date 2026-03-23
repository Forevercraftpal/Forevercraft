# Hunter Crossbow System — Load
scoreboard objectives add ec.ht_aim dummy "Hunter Steady Aim"
scoreboard objectives add ec.ht_bow_id dummy "Hunter Crossbow ID"
scoreboard objectives add ec.ht_charged dummy "Hunter Precision Ready"
scoreboard objectives add ec.ht_cd dummy "Hunter Cooldown"
scoreboard objectives add ec.ht_fade dummy "Hunter Fade CD"
scoreboard objectives add ec.ht_hit_timer dummy "Hunter Hit Timer"
schedule function evercraft:artifacts/hunter/tick 1s
