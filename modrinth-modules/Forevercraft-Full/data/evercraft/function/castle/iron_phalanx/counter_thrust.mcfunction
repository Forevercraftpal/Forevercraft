# The Iron Phalanx — Counter Thrust
# Run as boss when hit (HurtTime:10s). Retaliates with 8 damage to nearest player.

# Counter-attack the closest player (the one who just hit the boss)
damage @a[tag=ic.player,distance=..4,limit=1,sort=nearest] 8 minecraft:mob_attack by @s

# VFX — shield bash effect
particle crit ~ ~1 ~ 0.3 0.3 0.3 0.2 10
playsound minecraft:item.shield.block master @a[distance=..15] ~ ~ ~ 1.0 0.5
playsound minecraft:entity.iron_golem.attack master @a[distance=..15] ~ ~ ~ 0.6 1.2
