# Flame Strike 2 - Sets target on fire for 8 seconds
# Replaces Fire Aspect 2
# Enhancement (Dragonmaster Sword only): Dragon's Fury — every 5th proc = fire breath cone

advancement revoke @s only evercraft:artifacts/abilities/melee/flame_strike_2_trigger

# Set target on fire
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run data merge entity @s {Fire:160s}

# Visual feedback
execute at @s run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0.02 16
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 1.3

# === Dragon's Fury (Dragonmaster Sword only) ===
# Every 5th flame strike triggers a fire breath cone
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"dragonmaster_sword"}] run scoreboard players add @s ec.fury_hits 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"dragonmaster_sword"}] if score @s ec.fury_hits matches 5.. run function evercraft:artifacts/abilities/dragons_fury
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"dragonmaster_sword"}] if score @s ec.fury_hits matches 5.. run scoreboard players set @s ec.fury_hits 0
