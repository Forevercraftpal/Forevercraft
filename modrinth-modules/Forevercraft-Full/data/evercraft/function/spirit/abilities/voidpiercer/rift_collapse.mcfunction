# Voidpiercer — Rift Collapse
# Final 8 damage burst at center, kill marker
# Run as rift marker, at rift position

# Final damage burst — 8 damage to all nearby entities
execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 8 minecraft:magic

# Explosion VFX
particle explosion ~ ~0.5 ~ 2.0 0.5 2.0 0.1 10
particle reverse_portal ~ ~1 ~ 3.0 1.5 3.0 1.0 60
particle dust{color:[0.2,0.0,0.5],scale:2.0} ~ ~0.5 ~ 3.0 1.0 3.0 0.01 25
particle sonic_boom ~ ~0.5 ~ 0.0 0.0 0.0 0.0 1

# SFX — implosion sound
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.7 1.8
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 0.5

# Kill the rift marker
kill @s
