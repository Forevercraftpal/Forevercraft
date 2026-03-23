# Pharaoh's Fist — Golden Glow Activate
# Kill combo threshold reached — apply damage boost

tag @s add ec.sp_golden_glow

# +50% attack damage
attribute @s attack_damage modifier add evercraft:golden_glow 0.5 add_multiplied_base

# Apply glowing effect to player
effect give @s glowing 999999 0 true

# VFX + SFX
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 1.5
particle dust{color:[1.0,0.85,0.0],scale:2.0} ~ ~1 ~ 0.5 1.0 0.5 0.05 20

title @s actionbar [{"text":"GOLDEN GLOW ACTIVE!","color":"gold","bold":true}]
