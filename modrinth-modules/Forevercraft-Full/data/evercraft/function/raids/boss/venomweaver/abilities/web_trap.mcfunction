# The Venomweaver — Web Trap
# Places cobweb at a random participant's position
# Gives Slowness II while in web area, auto-clears after 200 ticks (10s)

# Tag a random participant
tag @a[tag=ec.rd_participant,sort=random,limit=1] add ec.rd_vw_target

# Spawn a marker at their feet to track the web
execute at @a[tag=ec.rd_vw_target,limit=1] run summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_vw_web"]}

# Apply slowness to the trapped player
execute at @a[tag=ec.rd_vw_target,limit=1] run effect give @a[tag=ec.rd_participant,distance=..1.5] slowness 3 1

# VFX: web particles
execute at @a[tag=ec.rd_vw_target,limit=1] run particle minecraft:item_cobweb ~ ~1 ~ 0.5 0.5 0.5 0.05 20
execute at @a[tag=ec.rd_vw_target,limit=1] run playsound minecraft:block.cobweb.place master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

# Clean up target tag
tag @a[tag=ec.rd_vw_target] remove ec.rd_vw_target

# Schedule web cleanup (remove web markers after 10 seconds)
# Web markers apply slowness each tick to nearby players — handled in phase tick
