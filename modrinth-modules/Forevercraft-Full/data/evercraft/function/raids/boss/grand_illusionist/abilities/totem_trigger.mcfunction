# Grand Illusionist — Totem Trigger
# Called as each totem, at totem position
# Activates effect when player within 3 blocks

# Only trigger every 40 ticks (prevent spam)
scoreboard players add @s ec.rd_totem_tick 1
execute unless score @s ec.rd_totem_tick matches 40.. run return 0
scoreboard players set @s ec.rd_totem_tick 0

# Check if any player is within range
execute unless entity @a[tag=ec.rd_participant,distance=..3] run return 0

# Fire totem — ignite
execute if entity @s[tag=ec.rd_gi_totem_fire] run execute as @a[tag=ec.rd_participant,distance=..3] run damage @s 3 minecraft:in_fire
execute if entity @s[tag=ec.rd_gi_totem_fire] run particle minecraft:flame ~ ~0.5 ~ 1.5 0.3 1.5 0.05 10

# Frost totem — Slowness III
execute if entity @s[tag=ec.rd_gi_totem_frost] run effect give @a[tag=ec.rd_participant,distance=..3] slowness 3 2
execute if entity @s[tag=ec.rd_gi_totem_frost] run particle minecraft:snowflake ~ ~0.5 ~ 1.5 0.3 1.5 0.05 10

# Fang totem — evoker fangs
execute if entity @s[tag=ec.rd_gi_totem_fang] positioned ~1 ~ ~0 run summon evoker_fangs ~ ~ ~
execute if entity @s[tag=ec.rd_gi_totem_fang] positioned ~-1 ~ ~0 run summon evoker_fangs ~ ~ ~
execute if entity @s[tag=ec.rd_gi_totem_fang] positioned ~0 ~ ~1 run summon evoker_fangs ~ ~ ~
execute if entity @s[tag=ec.rd_gi_totem_fang] positioned ~0 ~ ~-1 run summon evoker_fangs ~ ~ ~

# Poison totem — Poison II
execute if entity @s[tag=ec.rd_gi_totem_poison] run effect give @a[tag=ec.rd_participant,distance=..3] poison 4 1
execute if entity @s[tag=ec.rd_gi_totem_poison] run particle minecraft:item_slime ~ ~0.5 ~ 1.5 0.3 1.5 0.05 10

# Warning sound
playsound minecraft:block.note_block.bell hostile @a[tag=ec.rd_participant,distance=..5] ~ ~ ~ 0.6 1.5
