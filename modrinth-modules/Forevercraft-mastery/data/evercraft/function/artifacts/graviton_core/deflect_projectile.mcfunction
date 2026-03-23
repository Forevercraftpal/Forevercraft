# Deflect projectile away from player
# Reverses the projectile's direction and tags it to prevent re-deflection

# Tag this projectile as deflected so it won't be deflected again
tag @s add gc_deflected

# Visual feedback (before potential kill for arrows)
execute at @s run particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0.5 10
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..10] ~ ~ ~ 0.3 1.5

# === ARROWS: Replace with ownerless copy (1.21.5+ Owner no longer persists when removed) ===
# Generate random deflection values
execute store result score #gc_mx ec.temp run random value -5..5
execute store result score #gc_mz ec.temp run random value -5..5

# For arrows/spectral arrows: spawn ownerless replacement, apply motion, kill original
execute if entity @s[type=arrow] at @s run summon arrow ~ ~ ~ {Tags:["gc_deflected","gc_new"],pickup:0b,life:1180s}
execute if entity @s[type=spectral_arrow] at @s run summon spectral_arrow ~ ~ ~ {Tags:["gc_deflected","gc_new"],pickup:0b,life:1180s}
execute if entity @e[tag=gc_new,limit=1] as @e[tag=gc_new,limit=1] store result entity @s Motion[0] double 0.1 run scoreboard players get #gc_mx ec.temp
execute if entity @e[tag=gc_new,limit=1] as @e[tag=gc_new,limit=1] run data modify entity @s Motion[1] set value 0.5d
execute if entity @e[tag=gc_new,limit=1] as @e[tag=gc_new,limit=1] store result entity @s Motion[2] double 0.1 run scoreboard players get #gc_mz ec.temp
execute if entity @e[tag=gc_new,limit=1] as @e[tag=gc_new,limit=1] run tag @s remove gc_new
# Kill original arrow (replaced by ownerless copy)
execute if entity @s[type=arrow] run kill @s
execute if entity @s[type=spectral_arrow] run kill @s

# === NON-ARROWS: Redirect motion directly (fireballs, wither skulls, etc.) ===
# These don't need owner clearing — they just get sent in a random direction
execute unless entity @s[type=arrow] unless entity @s[type=spectral_arrow] run data modify entity @s Motion[1] set value 0.5d
execute unless entity @s[type=arrow] unless entity @s[type=spectral_arrow] store result entity @s Motion[0] double 0.1 run scoreboard players get #gc_mx ec.temp
execute unless entity @s[type=arrow] unless entity @s[type=spectral_arrow] store result entity @s Motion[2] double 0.1 run scoreboard players get #gc_mz ec.temp

# Remove the tag after 3 seconds (allows re-deflection of new projectiles, cleans up the tag)
schedule function evercraft:artifacts/graviton_core/clear_deflect_tag 60t append
