# Call of the Void — SOULSTRING (Exquisite)
# Siphon Arrow: Wither II + Weakness II for 6s, soul tether heals archer for 8s
# Kill while tethered = Absorption II (4 hearts) for 10s
# @s = player

# Apply debuffs to hit entity
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s wither 120 1 false
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s weakness 120 1 false
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s glowing 160 0 false

# Tag tethered entity for tracking
tag @e[tag=ec.ar_tethered] remove ec.ar_tethered
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run tag @s add ec.ar_tethered

# Grant archer Regeneration I for 8 seconds (represents life drain)
effect give @s regeneration 160 0 false

# Soul tether particles
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run particle soul ~ ~0.5 ~ 0.3 0.5 0.3 0.02 15
execute at @s run particle soul ~ ~1 ~ 0.3 0.5 0.3 0.02 10

# Sound
playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.8
playsound minecraft:block.sculk_catalyst.bloom master @s ~ ~ ~ 1 1.2

# Feedback
tellraw @s [{"text":"[Call of the Void] ","color":"light_purple"},{"text":"Soulstring ","color":"dark_purple","bold":true},{"text":"— Soul tether bound!","color":"light_purple"}]
