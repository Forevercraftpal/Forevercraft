# Sea Legs — Cutlass (Rare Knight)
# On hit: Speed I + Dolphin's Grace (8s)
# Enhancement: If already have Speed I from Sea Legs, upgrade to Speed II!

advancement revoke @s only evercraft:artifacts/abilities/sea_legs_trigger

# Check if player already has Speed — if so, upgrade to Speed II
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run effect give @s speed 8 1 false
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] at @s run particle bubble_pop ~ ~1 ~ 0.4 0.4 0.4 0.05 12
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run playsound minecraft:entity.dolphin.play player @s ~ ~ ~ 0.6 1.8

# Otherwise grant Speed I
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run effect give @s speed 8 0 false
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] at @s run particle bubble ~ ~1 ~ 0.3 0.3 0.3 0.05 8
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run playsound minecraft:entity.fish.swim player @s ~ ~ ~ 0.5 1.5

# Always grant Dolphin's Grace
effect give @s dolphins_grace 8 0 false

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
