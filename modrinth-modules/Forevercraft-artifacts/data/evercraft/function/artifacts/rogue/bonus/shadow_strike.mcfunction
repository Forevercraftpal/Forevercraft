# Nameless Blade — Shadow Strike: 20% chance for Invisibility 1s after swing
# Run as the swinging player

# Roll once
tag @s remove ec.rg_proc
execute if predicate evercraft:random/chance_20 run tag @s add ec.rg_proc

# Apply invisibility + effects if proc'd
execute if entity @s[tag=ec.rg_proc] run effect give @s invisibility 1 0 true
execute if entity @s[tag=ec.rg_proc] run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 8
execute if entity @s[tag=ec.rg_proc] run playsound minecraft:entity.illusioner.vanish player @a[distance=..16] ~ ~ ~ 0.5 1.5

tag @s remove ec.rg_proc
