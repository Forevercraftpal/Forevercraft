# Resonance Strike — Cleanup
# Run as player

# Reset state
scoreboard players set @s ec.cf_reso 0
scoreboard players set @s ec.cf_reso_pos 0
scoreboard players set @s ec.cf_reso_timer 0

# Kill resonance entities near player
kill @e[type=interaction,tag=ec.cf_reso_click,distance=..10]
