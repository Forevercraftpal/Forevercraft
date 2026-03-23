# Launch Target - Sends mob flying up to 50 blocks
# Runs as the target entity

# Apply massive upward velocity
# Motion[1] = vertical velocity, 3.5 = ~50 blocks high
data merge entity @s {Motion:[0.0d,3.5d,0.0d]}

# Visual and sound effects
particle gust ~ ~ ~ 0.5 0.5 0.5 0.2 20
particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 15
playsound minecraft:entity.wind_charge.wind_burst hostile @a ~ ~ ~ 1.0 0.8
playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1.0 0.6

# Announce the launch
execute as @a[distance=..32] run title @s actionbar {text:"Skyward Strike!",color:"yellow",bold:true}
