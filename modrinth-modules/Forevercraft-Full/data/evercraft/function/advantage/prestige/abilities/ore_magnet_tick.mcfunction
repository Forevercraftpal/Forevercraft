# Ore Magnet — teleport nearby ore drops to player after 3 seconds on ground
# Called from tick/main (1s schedule) for players with adv.pres_mine=1+
# Uses #evercraft:ore_drops item tag instead of 12 individual NBT reads (OPT Session 76)

# Increment timer on ore items within range (1 per second)
execute at @s as @e[type=item,distance=..8] if items entity @s contents #evercraft:ore_drops run scoreboard players add @s adv.pa_mine1_tm 1

# Subtle feedback when items are about to be pulled (once, not per-item)
execute at @s if entity @e[type=item,distance=..8,scores={adv.pa_mine1_tm=3..}] run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 1.8
execute at @s if entity @e[type=item,distance=..8,scores={adv.pa_mine1_tm=3..}] run particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.5 5

# After 3 seconds (3 ticks of 1s schedule), teleport ore items to player instantly
execute at @s as @e[type=item,distance=..8,scores={adv.pa_mine1_tm=3..}] if items entity @s contents #evercraft:ore_drops run tp @s @p[distance=..16,scores={adv.pres_mine=1..}]
