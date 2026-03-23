# ============================================================
# Upgrade Village to Legend Status
# Spawns iron golem guards and announces the upgrade
# Run positioned at the village marker
# ============================================================

# Spawn 2 iron golem guards at offset positions
execute positioned ~5 ~ ~3 run function evercraft:village/upgrades/spawn_guard
execute positioned ~-5 ~ ~-3 run function evercraft:village/upgrades/spawn_guard

# Visual effects at the village center
particle totem_of_undying ~ ~2 ~ 3 2 3 0.2 200
playsound minecraft:ui.toast.challenge_complete player @a[distance=..80] ~ ~ ~ 1 0.8
playsound minecraft:entity.iron_golem.repair player @a[distance=..80] ~ ~ ~ 1 1.2

# Announce to all players in range
tellraw @a[distance=..80] ["",{text:""},{"text":"◆ ",color:"gold"},{text:"This village has been elevated to ",color:"gray"},{text:"Legend",color:"gold",bold:true},{text:" status!",color:"gray"}]
tellraw @a[distance=..80] ["",{text:"  ",color:"gray"},{text:"Iron Golem guardians now protect this settlement.",color:"yellow"}]
