# Lifewoven Branch — Life Surge (Sneak+Right-click, 40s CD; spirit: 30s)
# 2-second channel (40 ticks), then massive heal wave
# All players within 20 blocks (spirit: 25): full heal + Regen IV + Absorption IV

# Set cooldown (spirit: 600, normal: 800)
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_cd2 600
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_cd2 800

# Begin channel phase (40 ticks = 2 seconds)
tag @s add ec.sp_surge_charging
scoreboard players set @s ec.sp_state 1
scoreboard players set @s ec.sp_timer 40

# Apply Slowness IV during channel (rooted in place)
effect give @s slowness 3 3 true

# VFX + SFX — gathering nature energy
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.0
playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.5
particle happy_villager ~ ~1 ~ 1.0 1.0 1.0 0.1 15
particle dust{color:[0.2,1.0,0.3],scale:2.0} ~ ~1 ~ 0.5 1.0 0.5 0.02 10

title @s actionbar [{"text":"Channeling Life Surge...","color":"green","italic":true}]
