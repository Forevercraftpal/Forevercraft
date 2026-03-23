# Grounding Blow — Anchor (Uncommon Berserker)
# On hit: Slowness I (2s) + Mining Fatigue I (2s) — anchored to the ground

advancement revoke @s only evercraft:artifacts/abilities/grounding_blow_trigger

# Apply both debuffs to target
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 2 0 false
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s mining_fatigue 2 0 false

# Heavy anchor impact feedback
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle crit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 10
execute as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle squid_ink ~ ~0.5 ~ 0.2 0.2 0.2 0.01 5
playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 0.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
