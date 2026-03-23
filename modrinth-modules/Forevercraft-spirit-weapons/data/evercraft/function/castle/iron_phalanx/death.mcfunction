# The Iron Phalanx — Death
# Called when boss entity no longer exists but phase was set
# Drops loot to all Castle players, cleans up

# GUARD: Reset phase immediately to prevent double-fire
# (floor_complete's kill @e[tag=ic.mob] could trigger this again next tick)
scoreboard players set #ic_phalanx_phase ec.var 0

# Announce
tellraw @a[tag=ic.player] [{text:"[Castle] ",color:"dark_gray"},{text:"The Iron Phalanx",color:"white",bold:true},{text:" has been defeated!",color:"gold"}]
execute as @a[tag=ic.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0

# Drop loot to each player
execute as @a[tag=ic.player] at @s run function evercraft:castle/iron_phalanx/loot

# Track boss kill for metamorphosis (set flag on all players)
scoreboard players set @a[tag=ic.player] ec.ip_slain 1

# Cleanup all phalanx entities + scoreboards
function evercraft:castle/iron_phalanx/cleanup
