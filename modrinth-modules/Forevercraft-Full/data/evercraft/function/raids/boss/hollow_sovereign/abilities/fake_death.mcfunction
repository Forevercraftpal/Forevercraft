# Hollow Sovereign — Fake Shadow "Dies" (5 hits reached)
# Teleport far away and go invisible, start respawn timer

# VFX at current position
particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20
particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.05 10
playsound minecraft:entity.phantom.death hostile @a[tag=ec.rd_participant,distance=..15] ~ ~ ~ 1.0 0.5

# Make invisible and teleport away
effect give @s invisibility 10 0 true
tp @s ~ -100 ~

# Clear hit tags
tag @s remove ec.rd_hs_fake_h1
tag @s remove ec.rd_hs_fake_h2
tag @s remove ec.rd_hs_fake_h3
tag @s remove ec.rd_hs_fake_h4
tag @s remove ec.rd_hs_fake_h5

# Tag for respawn tracking
tag @s add ec.rd_hs_fake_dead

# Set respawn timer (200 ticks = 10 seconds)
scoreboard players set #rd_hs_shadow_cd ec.var 200

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"A shadow dissolves... but it will return.","color":"gray","italic":true}]
