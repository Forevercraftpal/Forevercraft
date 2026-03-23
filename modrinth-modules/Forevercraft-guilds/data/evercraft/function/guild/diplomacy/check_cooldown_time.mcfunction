# Guild Diplomacy — Check if cooldown has expired
# Run as: guild marker entity (after confirming cooldown entry exists)
# Uses #gd_now ec.temp = current gametime
# Cooldown entries that still exist are assumed active (cleanup removes expired ones)

scoreboard players set #gd_on_cooldown ec.temp 1
