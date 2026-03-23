# Zombie Villager Cured — grant trade discounts to ALL nearby players
# Triggered when any player cures a zombie villager
# Run as the curing player

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:mobs/zombie_cure

# Announce to all players
tellraw @a [{text:"[",color:"dark_gray"},{text:"Forevercraft",color:"gold"},{text:"] ",color:"dark_gray"},{selector:"@s"},{text:" has cured a zombie villager! All nearby players receive temporary trade discounts.",color:"green"}]

# Give Hero of the Village I (60 seconds = 1200 ticks) to all players within 64 blocks
effect give @a[distance=..64] minecraft:hero_of_the_village 60 0 true

# Play a celebratory sound for all nearby players
playsound minecraft:entity.player.levelup master @a[distance=..64] ~ ~ ~ 0.8 1.0

# Particles at the curing player's location
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 20
