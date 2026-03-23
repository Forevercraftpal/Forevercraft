# Soul Piercer — Poseidon's Wrath (Sneak+Right-click, 30s CD)
# 2-second charge-up, then massive AoE forward
# 20 damage in 10-block cone (spirit: 15), heavy knockback, 3 lightning strikes
# Slowness III for 8s after

# Set cooldown
scoreboard players set @s ec.sp_cd2 600

# Begin charge-up: 40 ticks (2 seconds)
tag @s add ec.sp_poseidon_charging
scoreboard players set @s ec.sp_state 40

# Slow player during charge
effect give @s slowness 2 2 false

# Charge VFX + SFX
playsound minecraft:ambient.underwater.enter player @a ~ ~ ~ 1.0 0.5
playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 0.8 1.5
particle bubble ~ ~1 ~ 0.5 1.0 0.5 0.1 20
particle dust{color:[0.0,0.3,0.8],scale:2.0} ~ ~1 ~ 0.5 1.0 0.5 0.01 15

title @s actionbar [{"text":"Channeling Poseidon's Wrath...","color":"blue","italic":true}]
