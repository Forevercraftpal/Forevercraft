# The Iron Phalanx — Trident Thrust
# Run as boss, at boss. Damages nearest player within 4 blocks for 12 damage.

# Find nearest player within 4 blocks
execute at @s run damage @a[tag=ic.player,distance=..4,limit=1,sort=nearest] 12 minecraft:mob_attack by @s

# VFX + SFX
particle sweep_attack ^ ^1 ^2 0 0 0 0 1
playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 0.8 0.6
