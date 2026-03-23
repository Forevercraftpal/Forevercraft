# Tempest — Spawn arrow volley
# @s = marker at rain location (10 blocks above impact), position = marker

# Spawn 12 arrows falling down in a 6-block radius spread
summon arrow ~-2 ~ ~-1 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~3 ~ ~2 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~-1 ~ ~3 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~2 ~ ~-3 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~-3 ~ ~0 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~1 ~ ~-2 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~0 ~ ~1 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~-1 ~ ~-3 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~2 ~ ~1 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~-2 ~ ~3 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~1 ~ ~2 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}
summon arrow ~-3 ~ ~-2 {damage:4.0d,pickup:0b,life:1180s,Motion:[0.0d,-2.0d,0.0d]}

# Rain particle effect
particle cloud ~ ~-5 ~ 6 5 6 0.02 50
playsound minecraft:entity.arrow.shoot master @a ~ ~-10 ~ 2 0.5
