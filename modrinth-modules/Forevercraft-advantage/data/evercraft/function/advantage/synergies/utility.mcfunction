# Utility Synergy — Agility 20 + Stealth 20 = Shadow Step
# Sneaking triggers 10s speed boost with 60s cooldown
scoreboard players set @s adv.syn_utility 0
execute if score @s adv.agility matches 20.. if score @s adv.stealth matches 20.. run scoreboard players set @s adv.syn_utility 1

# Shadow Step activation: detect sneaking while synergy unlocked, cooldown ready, not already active
execute unless score @s adv.syn_utility matches 1 run return 0
execute if score @s adv.syn_shadow matches 1.. run return 0
execute if score @s adv.syn_shad_cd matches 1.. run return 0
execute unless predicate evercraft:advantage/is_sneaking run return 0

# Activate Shadow Step: 10 seconds (200 ticks)
scoreboard players set @s adv.syn_shadow 200
scoreboard players set @s adv.syn_shad_cd 1200

# Apply massive sneaking speed boost (3x normal = sprint speed while crouching)
attribute @s sneaking_speed modifier remove evercraft:adv_syn_shadow
attribute @s sneaking_speed modifier add evercraft:adv_syn_shadow 3.0 add_multiplied_base

# Feedback
title @s actionbar [{text:"✦ Shadow Step! ",color:"dark_purple",bold:true},{text:"(10s)",color:"gray"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.5
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 30
