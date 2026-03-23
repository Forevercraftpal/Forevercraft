# Strength on Kill — Caliburn/Excalibur + Kill Chain Enhancement
# Base: Grants Strength I for 5 seconds on kill
# Enhancement: Kills within 10s stack (I→II). 3rd kill in window also grants Speed I (5s).
advancement revoke @s only evercraft:artifacts/abilities/strength_on_kill_trigger

# Increment kill chain counter
scoreboard players add @s ec.kill_chain 1

# Reset per-player chain decay timer (10 seconds)
scoreboard players set @s ec.chain_cd 10

# Base: Strength I for 5s (always)
effect give @s strength 5 0 false

# Enhancement: If 2+ kills in chain, upgrade to Strength II
execute if score @s ec.kill_chain matches 2.. run effect give @s strength 5 1 false

# Enhancement: At 3+ kills, also grant Speed I (5s)
execute if score @s ec.kill_chain matches 3.. run effect give @s speed 5 0 false
execute if score @s ec.kill_chain matches 3.. run title @s actionbar {text:"Kill Chain!",color:"gold",bold:true}

# Visual/audio feedback — escalating with chain
particle soul ~ ~1 ~ 0.3 0.5 0.3 0.02 8
execute if score @s ec.kill_chain matches 2.. at @s run particle soul ~ ~1 ~ 0.5 0.8 0.5 0.02 15
execute if score @s ec.kill_chain matches 3.. at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 1 20
playsound minecraft:entity.wither_skeleton.death player @s ~ ~ ~ 0.5 1.5
execute if score @s ec.kill_chain matches 3.. run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.4 1.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
