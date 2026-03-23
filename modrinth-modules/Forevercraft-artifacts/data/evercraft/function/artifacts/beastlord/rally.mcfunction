# Beastlord — Rally Cry
# Buffs all owned tamed animals + player within 16 blocks for 15 seconds
# Triggers immediate warp for all animal types

# Set cooldown (60 seconds)
scoreboard players set @s ec.bl_rally_cd 60

# Tag owned tameables within 16 blocks
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner

# Trigger immediate warp for all animal types
scoreboard players set @s ec.bl_warp_w 1
scoreboard players set @s ec.bl_warp_c 1
scoreboard players set @s ec.bl_warp_p 1

# === BUFF TAMED ANIMALS (real effects) ===
effect give @e[tag=bl.owned] regeneration 15 0 true
effect give @e[tag=bl.owned] resistance 15 0 true
effect give @e[tag=bl.owned] speed 15 2 true

# === BUFF PLAYER ===
effect give @s regeneration 15 0 false
effect give @s resistance 15 0 false
effect give @s speed 15 2 false

# === VISUAL: Soul flame burst around player ===
execute at @s run particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30
execute at @s run particle soul ~ ~1 ~ 0.5 0.8 0.5 0.05 20

# === VISUAL: Particles on each owned animal ===
execute at @e[tag=bl.owned] run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.08 15
execute at @e[tag=bl.owned] run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 5

# === SOUND ===
execute at @s run playsound minecraft:entity.wolf_puglin.ambient player @a ~ ~ ~ 1.0 0.8
execute at @s run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.6 1.5

# === NOTIFY ===
tellraw @s [{"text":"[Beastlord] ","color":"dark_purple"},{"text":"Rally Cry! ","color":"light_purple","bold":true},{"text":"Your animals are empowered for 15 seconds!","color":"light_purple"}]
title @s actionbar {"text":"\u2726 Rally Cry Active \u2726","color":"light_purple","bold":true}

# Clean up ownership tags
tag @e[tag=bl.owned] remove bl.owned
