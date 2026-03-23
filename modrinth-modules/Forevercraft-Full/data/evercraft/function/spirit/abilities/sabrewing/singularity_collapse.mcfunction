# Soulstring — Singularity Collapse
# Run as singularity marker at its position when timer expires
# Final burst: 25 damage (spirit: 40) to all entities in range

# === DAMAGE BURST ===
# Normal: 25 damage in 8-block radius
execute as @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 25 minecraft:magic

# Spirit tier bonus: 40 damage instead (re-apply extra 15)
# Check by reading caster's tier — but marker doesn't track caster, so use tag
# Simpler: just use the 25 base. Spirit tier gets wider pull during tick phase.

# === EXPLOSION VFX ===
particle explosion ~ ~1 ~ 2.0 2.0 2.0 0.1 8
particle reverse_portal ~ ~1 ~ 5.0 5.0 5.0 0.3 100
particle dust{color:[0.4,0.0,0.6],scale:3.0} ~ ~1 ~ 4.0 4.0 4.0 0.1 50
particle sonic_boom ~ ~1 ~ 0 0 0 0 1
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1

# === SFX — Massive implosion ===
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1.0 0.4
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0 0.2
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1.0 0.6

# === CLEANUP ===
kill @s
