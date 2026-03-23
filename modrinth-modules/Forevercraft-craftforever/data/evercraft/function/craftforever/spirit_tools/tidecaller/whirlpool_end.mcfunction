# Tidecaller — Whirlpool cleanup
execute at @e[type=marker,tag=ec_st_whirlpool] run particle minecraft:explosion ~ ~1 ~ 2 1 2 0.1 10
execute at @e[type=marker,tag=ec_st_whirlpool] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1.2
kill @e[type=marker,tag=ec_st_whirlpool]
