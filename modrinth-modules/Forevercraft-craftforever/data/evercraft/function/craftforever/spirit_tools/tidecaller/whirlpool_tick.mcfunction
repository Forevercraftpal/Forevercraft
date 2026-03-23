# Tidecaller — Whirlpool auto-fish tick
# Self-scheduling every 2s while whirlpool exists

# If no whirlpool markers exist, stop
execute unless entity @e[type=marker,tag=ec_st_whirlpool,limit=1] run return 0

# Spawn random fish at whirlpool position
execute at @e[type=marker,tag=ec_st_whirlpool] run loot spawn ~ ~1 ~ loot minecraft:gameplay/fishing/fish
execute at @e[type=marker,tag=ec_st_whirlpool] run particle minecraft:bubble_column_up ~ ~ ~ 2 0.5 2 0.1 15
execute at @e[type=marker,tag=ec_st_whirlpool] run particle minecraft:nautilus ~ ~1 ~ 1.5 0.5 1.5 0.2 10
execute at @e[type=marker,tag=ec_st_whirlpool] run playsound minecraft:entity.fishing_bobber.splash master @a ~ ~ ~ 0.5 1.0

# Pull nearby mobs toward whirlpool (damage + pull)
execute at @e[type=marker,tag=ec_st_whirlpool] as @e[type=!player,type=!marker,type=!item,distance=..5] run damage @s 2 minecraft:drown
execute at @e[type=marker,tag=ec_st_whirlpool] as @e[type=!player,type=!marker,distance=2..8] at @s facing entity @e[type=marker,tag=ec_st_whirlpool,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.5

# Check if mastery timer expired — cleanup
execute as @a[tag=ec.st_held,scores={ec.st_mastery_t=..0,ec.st_tool=3}] run function evercraft:craftforever/spirit_tools/tidecaller/whirlpool_end

# Hard timeout: if NO player holds Tidecaller with active mastery, kill orphaned whirlpools
execute unless entity @a[tag=ec.st_held,scores={ec.st_tool=3,ec.st_mastery_t=1..}] run function evercraft:craftforever/spirit_tools/tidecaller/whirlpool_end

# Reschedule only if whirlpool still exists
execute if entity @e[type=marker,tag=ec_st_whirlpool,limit=1] run schedule function evercraft:craftforever/spirit_tools/tidecaller/whirlpool_tick 2s
