# Javelin Class — Hoplite Hurt Detection
# Triggered by entity_hurt_player advancement

# Re-arm advancement
advancement revoke @s only evercraft:artifacts/javelin/hoplite_hurt

# Only for active Hoplite javelin users, off Aegis cooldown
execute unless entity @s[tag=ec.jv_active] run return 0
execute unless score @s ec.jv_hoplite matches 1 run return 0
execute if score @s ec.jv_aegis_cd matches 1.. run return run title @s actionbar [{"text":"Aegis Burst cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"ec.jv_aegis_cd"},"color":"blue"},{"text":"s","color":"gray"}]

# Increment hit counter + reset 5s window (100 ticks)
scoreboard players add @s ec.jv_aegis 1
scoreboard players set @s ec.jv_aegis_w 100

# 3 hits reached — trigger Aegis Burst
execute if score @s ec.jv_aegis matches 3.. run function evercraft:artifacts/javelin/aegis_burst
