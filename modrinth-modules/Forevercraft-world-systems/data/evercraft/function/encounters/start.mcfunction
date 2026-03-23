# Underground Biome Encounters — Start Encounter
# Run as/at player in cave biome (ec.biome_id 15-17)

# Set encounter type and timer based on biome
execute if score @s ec.biome_id matches 15 run scoreboard players set @s ube.type 1
execute if score @s ec.biome_id matches 15 run scoreboard players set @s ube.timer 6
execute if score @s ec.biome_id matches 16 run scoreboard players set @s ube.type 2
execute if score @s ec.biome_id matches 16 run scoreboard players set @s ube.timer 6
execute if score @s ec.biome_id matches 17 run scoreboard players set @s ube.type 3
execute if score @s ec.biome_id matches 17 run scoreboard players set @s ube.timer 5

# === Lush Caves — Bloom Surge ===
execute if score @s ube.type matches 1 run tellraw @s [{text:"The cavern stirs... a ",color:"dark_green"},{text:"Bloom Surge",color:"green",bold:true},{text:" erupts around you!",color:"dark_green"}]
execute if score @s ube.type matches 1 run title @s subtitle {text:"Everything becomes venomous...",color:"green"}
execute if score @s ube.type matches 1 run playsound minecraft:block.azalea_leaves.break player @s ~ ~ ~ 1.0 0.5

# Spawn poisonous mobs
execute if score @s ube.type matches 1 run summon zombie ~ ~ ~3 {Tags:["ube.enc_mob"],active_effects:[{id:"minecraft:poison",duration:99999,amplifier:0,show_particles:0b}],PersistenceRequired:1b}
execute if score @s ube.type matches 1 run summon zombie ~3 ~ ~ {Tags:["ube.enc_mob"],active_effects:[{id:"minecraft:poison",duration:99999,amplifier:0,show_particles:0b}],PersistenceRequired:1b}
execute if score @s ube.type matches 1 run summon zombie ~-3 ~ ~ {Tags:["ube.enc_mob"],active_effects:[{id:"minecraft:poison",duration:99999,amplifier:0,show_particles:0b}],PersistenceRequired:1b}
execute if score @s ube.type matches 1 run summon spider ~ ~ ~-3 {Tags:["ube.enc_mob"],active_effects:[{id:"minecraft:poison",duration:99999,amplifier:0,show_particles:0b}],PersistenceRequired:1b}

# === Dripstone Caves — Crystalline Tremor ===
execute if score @s ube.type matches 2 run tellraw @s [{text:"The stone cracks... a ",color:"gray"},{text:"Crystalline Tremor",color:"gold",bold:true},{text:" shakes the cavern!",color:"gray"}]
execute if score @s ube.type matches 2 run title @s subtitle {text:"Creatures stir beneath the stone...",color:"gold"}
execute if score @s ube.type matches 2 run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.8 0.6

# Spawn cave spiders
execute if score @s ube.type matches 2 run summon cave_spider ~ ~ ~3 {Tags:["ube.tremor_mob"],PersistenceRequired:1b}
execute if score @s ube.type matches 2 run summon cave_spider ~3 ~ ~ {Tags:["ube.tremor_mob"],PersistenceRequired:1b}
execute if score @s ube.type matches 2 run summon cave_spider ~-3 ~ ~ {Tags:["ube.tremor_mob"],PersistenceRequired:1b}
execute if score @s ube.type matches 2 run summon cave_spider ~ ~ ~-3 {Tags:["ube.tremor_mob"],PersistenceRequired:1b}

# === Deep Dark — Void Whisper ===
execute if score @s ube.type matches 3 run tellraw @s [{text:"A chill runs through you... the ",color:"dark_gray"},{text:"Void Whisper",color:"dark_purple",bold:true},{text:" awakens.",color:"dark_gray"}]
execute if score @s ube.type matches 3 run title @s subtitle {text:"The darkness seeps into your bones...",color:"dark_purple"}
execute if score @s ube.type matches 3 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.0 0.8

# Spawn dark mobs
execute if score @s ube.type matches 3 run summon phantom ~ ~3 ~ {Tags:["ube.enc_mob"],PersistenceRequired:1b}
execute if score @s ube.type matches 3 run summon phantom ~ ~3 ~3 {Tags:["ube.enc_mob"],PersistenceRequired:1b}
execute if score @s ube.type matches 3 run summon phantom ~ ~3 ~-3 {Tags:["ube.enc_mob"],PersistenceRequired:1b}
execute if score @s ube.type matches 3 run summon skeleton ~ ~ ~4 {Tags:["ube.enc_mob"],PersistenceRequired:1b}

# Apply initial debuffs for Deep Dark
execute if score @s ube.type matches 3 run effect give @s slowness 15 1 false
execute if score @s ube.type matches 3 run effect give @s weakness 15 0 false
execute if score @s ube.type matches 3 run effect give @s darkness 15 0 true

# Title for all
title @s title {text:"Encounter!",color:"red",bold:true}
playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.6 1.2
