# RPG Health Bar — Hide
# Called when linger timer reaches 0
# Context: as @a[hb.linger=0,hb.enabled=1..]

execute if score @s hb.slot matches 1 run bossbar set evercraft:hb_1 visible false
execute if score @s hb.slot matches 2 run bossbar set evercraft:hb_2 visible false
execute if score @s hb.slot matches 3 run bossbar set evercraft:hb_3 visible false
execute if score @s hb.slot matches 4 run bossbar set evercraft:hb_4 visible false
execute if score @s hb.slot matches 5 run bossbar set evercraft:hb_5 visible false
execute if score @s hb.slot matches 6 run bossbar set evercraft:hb_6 visible false
execute if score @s hb.slot matches 7 run bossbar set evercraft:hb_7 visible false
execute if score @s hb.slot matches 8 run bossbar set evercraft:hb_8 visible false
execute if score @s hb.slot matches 9 run bossbar set evercraft:hb_9 visible false
execute if score @s hb.slot matches 10 run bossbar set evercraft:hb_10 visible false

tag @s remove hb.found

# Set linger to -1 so this doesn't re-trigger every tick
scoreboard players set @s hb.linger -1
