# Underground Biome Encounters — Deep Dark: Void Whisper
# Run as/at player every 10s during encounter
# Apply Slowness II + Weakness I, replenish mobs, heavy atmosphere

# Apply debuffs (re-apply each tick to ensure coverage)
effect give @s slowness 15 1 false
effect give @s weakness 15 0 false
effect give @s darkness 15 0 true

# Replenish encounter mobs if any were killed (maintain 4)
execute store result score #ube_count ec.var if entity @e[tag=ube.enc_mob,distance=..32]
execute if score #ube_count ec.var matches ..2 run summon phantom ~ ~3 ~ {Tags:["ube.enc_mob"],PersistenceRequired:1b}
execute if score #ube_count ec.var matches ..1 run summon skeleton ~ ~ ~4 {Tags:["ube.enc_mob"],PersistenceRequired:1b}

# Ambient effects
particle sculk_charge_pop ~ ~1 ~ 6 3 6 0.02 15
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.5 0.6
playsound minecraft:block.sculk_sensor.clicking player @s ~ ~ ~ 0.3 1.5
