# Javelin Class — Remove / Cleanup
# Run as player who unequipped javelin trident

tag @s remove ec.jv_active
scoreboard players set @s ec.jv_tier 0
scoreboard players set @s ec.jv_id 0
scoreboard players set @s ec.jv_thrown 0
scoreboard players set @s ec.jv_melee 0
scoreboard players set @s ec.jv_hoplite 0
scoreboard players set @s ec.jv_hoplite_prev 0
scoreboard players set @s ec.jv_aegis 0
scoreboard players set @s ec.jv_aegis_w 0
# Keep ec.jv_cd and ec.jv_aegis_cd running — prevent cooldown exploit by unequipping
