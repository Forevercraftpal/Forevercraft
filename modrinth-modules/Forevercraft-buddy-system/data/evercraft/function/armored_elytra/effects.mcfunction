# Armored Elytra — Ritual Effects
# Runs at the beacon/stonecutter position after merge/unmerge

# Lightning visual (no real bolt — it destroys the spawned item)
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..64] ~ ~ ~ 2.0 0.9
playsound minecraft:entity.lightning_bolt.impact master @a[distance=..32] ~ ~ ~ 1.5 1.0
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~
particle electric_spark ~ ~1 ~ 0.2 1.5 0.2 0.5 40

# Particles — gold burst
particle dust_color_transition{from_color:[1.0,0.85,0.0],scale:2,to_color:[0.0,0.0,0.0]} ~ ~1 ~ 0.5 0.5 0.5 0.1 100
particle end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50

# Sounds
playsound minecraft:block.beacon.activate master @a[distance=..32] ~ ~ ~ 1.5 0.8
playsound minecraft:block.anvil.use master @a[distance=..32] ~ ~ ~ 1.0 1.2
playsound minecraft:entity.ender_dragon.growl master @a[distance=..32] ~ ~ ~ 0.5 1.5
