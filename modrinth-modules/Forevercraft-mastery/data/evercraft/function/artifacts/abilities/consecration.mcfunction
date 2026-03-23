# Consecration — Bone Cudgel (Rare Beastlord)
# On undead kill: Strength I (5s) + all undead within 8 blocks glow
# "The holy aura reveals the undead"

advancement revoke @s only evercraft:artifacts/abilities/consecration_trigger

# Grant Strength I to the slayer
effect give @s strength 5 0 false

# Reveal all undead within 8 blocks (Glowing 5s)
execute at @s as @e[type=#minecraft:undead,distance=..8,limit=10] run effect give @s glowing 5 0 false

# Holy aura visuals
execute at @s run particle enchant ~ ~1 ~ 1 0.5 1 1 20
execute at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.05 8
playsound minecraft:block.beacon.activate player @a[distance=..16] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
