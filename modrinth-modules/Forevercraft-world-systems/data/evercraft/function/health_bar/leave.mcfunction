# RPG Health Bar — Player Leave / Disable
# Releases boss bar slot
# Context: as player who is leaving or disabling

# Release slot based on current assignment
execute if score @s hb.slot matches 1 run scoreboard players set #hb_slot_1 hb.slot 0
execute if score @s hb.slot matches 1 run bossbar set evercraft:hb_1 visible false
execute if score @s hb.slot matches 1 run bossbar set evercraft:hb_1 players
execute if score @s hb.slot matches 2 run scoreboard players set #hb_slot_2 hb.slot 0
execute if score @s hb.slot matches 2 run bossbar set evercraft:hb_2 visible false
execute if score @s hb.slot matches 2 run bossbar set evercraft:hb_2 players
execute if score @s hb.slot matches 3 run scoreboard players set #hb_slot_3 hb.slot 0
execute if score @s hb.slot matches 3 run bossbar set evercraft:hb_3 visible false
execute if score @s hb.slot matches 3 run bossbar set evercraft:hb_3 players
execute if score @s hb.slot matches 4 run scoreboard players set #hb_slot_4 hb.slot 0
execute if score @s hb.slot matches 4 run bossbar set evercraft:hb_4 visible false
execute if score @s hb.slot matches 4 run bossbar set evercraft:hb_4 players
execute if score @s hb.slot matches 5 run scoreboard players set #hb_slot_5 hb.slot 0
execute if score @s hb.slot matches 5 run bossbar set evercraft:hb_5 visible false
execute if score @s hb.slot matches 5 run bossbar set evercraft:hb_5 players
execute if score @s hb.slot matches 6 run scoreboard players set #hb_slot_6 hb.slot 0
execute if score @s hb.slot matches 6 run bossbar set evercraft:hb_6 visible false
execute if score @s hb.slot matches 6 run bossbar set evercraft:hb_6 players
execute if score @s hb.slot matches 7 run scoreboard players set #hb_slot_7 hb.slot 0
execute if score @s hb.slot matches 7 run bossbar set evercraft:hb_7 visible false
execute if score @s hb.slot matches 7 run bossbar set evercraft:hb_7 players
execute if score @s hb.slot matches 8 run scoreboard players set #hb_slot_8 hb.slot 0
execute if score @s hb.slot matches 8 run bossbar set evercraft:hb_8 visible false
execute if score @s hb.slot matches 8 run bossbar set evercraft:hb_8 players
execute if score @s hb.slot matches 9 run scoreboard players set #hb_slot_9 hb.slot 0
execute if score @s hb.slot matches 9 run bossbar set evercraft:hb_9 visible false
execute if score @s hb.slot matches 9 run bossbar set evercraft:hb_9 players
execute if score @s hb.slot matches 10 run scoreboard players set #hb_slot_10 hb.slot 0
execute if score @s hb.slot matches 10 run bossbar set evercraft:hb_10 visible false
execute if score @s hb.slot matches 10 run bossbar set evercraft:hb_10 players

scoreboard players set @s hb.slot 0
scoreboard players set @s hb.enabled 0
