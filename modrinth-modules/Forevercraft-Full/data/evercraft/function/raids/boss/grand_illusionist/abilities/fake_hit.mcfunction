# Grand Illusionist — Fake Hit Tracking
# Called when a fake copy takes a hit — accumulate tag-based damage, "die" after 5 hits

# Accumulate hit tags
execute unless entity @s[tag=ec.rd_gi_h1] run tag @s add ec.rd_gi_h1
execute if entity @s[tag=ec.rd_gi_h1] unless entity @s[tag=ec.rd_gi_h2] run tag @s add ec.rd_gi_h2
execute if entity @s[tag=ec.rd_gi_h2] unless entity @s[tag=ec.rd_gi_h3] run tag @s add ec.rd_gi_h3
execute if entity @s[tag=ec.rd_gi_h3] unless entity @s[tag=ec.rd_gi_h4] run tag @s add ec.rd_gi_h4
execute if entity @s[tag=ec.rd_gi_h4] unless entity @s[tag=ec.rd_gi_h5] run tag @s add ec.rd_gi_h5

# On 5th hit: "die" (teleport away + invisible for 300 ticks then respawn)
execute if entity @s[tag=ec.rd_gi_h5] at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.2 15
execute if entity @s[tag=ec.rd_gi_h5] at @s run playsound minecraft:entity.evoker.death hostile @a[tag=ec.rd_participant,distance=..15] ~ ~ ~ 0.8 1.0
execute if entity @s[tag=ec.rd_gi_h5] run tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"An illusion shatters!","color":"gray","italic":true}]
execute if entity @s[tag=ec.rd_gi_h5] run tp @s ~ -100 ~
execute if entity @s[tag=ec.rd_gi_h5] run tag @s add ec.rd_gi_dead
execute if entity @s[tag=ec.rd_gi_h5] run tag @s remove ec.rd_gi_h1
execute if entity @s[tag=ec.rd_gi_h5] run tag @s remove ec.rd_gi_h2
execute if entity @s[tag=ec.rd_gi_h5] run tag @s remove ec.rd_gi_h3
execute if entity @s[tag=ec.rd_gi_h5] run tag @s remove ec.rd_gi_h4
execute if entity @s[tag=ec.rd_gi_h5] run tag @s remove ec.rd_gi_h5

# Feedback
execute unless entity @s[tag=ec.rd_gi_dead] at @s run particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.1 5
