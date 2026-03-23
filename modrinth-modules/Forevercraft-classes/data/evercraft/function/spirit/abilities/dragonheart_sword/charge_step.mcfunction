# Wyrmcleaver — Charge Step
# Run as player at player. Teleport forward 2 blocks, damage nearby, trail particles.
# Called each tick while ec.sp_state > 0

# Decrement state (step counter)
scoreboard players remove @s ec.sp_state 1

# Teleport forward 2 blocks in facing direction
tp @s ^ ^ ^2

# Damage all nearby mobs within 3 blocks — 10 damage + knockback
execute as @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 10 minecraft:player_attack by @p[sort=nearest,limit=1]

# VFX — Fire trail
particle flame ~ ~0.5 ~ 0.8 0.5 0.8 0.1 15
particle dust{color:[1.0,0.3,0.0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.05 8
particle dragon_breath ~ ~0.5 ~ 0.5 0.3 0.5 0.05 6

# SFX — Whoosh per step
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.8 0.6
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.4 1.5
