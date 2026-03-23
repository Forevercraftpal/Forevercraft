# The Leviathan — Trap Sponge Slot (spawns guardians)
# Runs as the sponge slot interaction entity

# VFX: ominous rumble
particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10
particle minecraft:bubble ~ ~1 ~ 1 1 1 0.2 30
playsound minecraft:entity.elder_guardian.curse master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2

# Warning
tellraw @a[tag=ec.rd_participant] [{text:"  ✖ ",color:"red"},{text:"TRAP! ",color:"dark_red",bold:true},{text:"Guardians emerge from the walls!",color:"red"}]

# Spawn 3 guardians near the trap
execute positioned ~ ~ ~ run summon guardian ~1 ~1 ~ {Tags:["ec.rd_lv_guard"],PersistenceRequired:1b,Silent:1b}
execute positioned ~ ~ ~ run summon guardian ~-1 ~1 ~ {Tags:["ec.rd_lv_guard"],PersistenceRequired:1b,Silent:1b}
execute positioned ~ ~ ~ run summon guardian ~ ~1 ~1 {Tags:["ec.rd_lv_guard"],PersistenceRequired:1b,Silent:1b}

# Damage nearby players
execute positioned ~ ~ ~ run effect give @a[tag=ec.rd_participant,distance=..4] mining_fatigue 10 1 false
