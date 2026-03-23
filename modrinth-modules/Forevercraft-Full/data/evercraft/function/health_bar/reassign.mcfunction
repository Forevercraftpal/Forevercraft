# RPG Health Bar — Reassign (Rejoin)
# Re-assigns player to their existing boss bar slot after reconnect
# Context: as player with hb.slot already set

scoreboard players set @s hb.enabled 1
scoreboard players set @s hb.linger -1

# Re-assign player to their bar and re-mark slot as claimed
execute if score @s hb.slot matches 1 run bossbar set evercraft:hb_1 players @s
execute if score @s hb.slot matches 1 run scoreboard players set #hb_slot_1 hb.slot 1
execute if score @s hb.slot matches 2 run bossbar set evercraft:hb_2 players @s
execute if score @s hb.slot matches 2 run scoreboard players set #hb_slot_2 hb.slot 1
execute if score @s hb.slot matches 3 run bossbar set evercraft:hb_3 players @s
execute if score @s hb.slot matches 3 run scoreboard players set #hb_slot_3 hb.slot 1
execute if score @s hb.slot matches 4 run bossbar set evercraft:hb_4 players @s
execute if score @s hb.slot matches 4 run scoreboard players set #hb_slot_4 hb.slot 1
execute if score @s hb.slot matches 5 run bossbar set evercraft:hb_5 players @s
execute if score @s hb.slot matches 5 run scoreboard players set #hb_slot_5 hb.slot 1
execute if score @s hb.slot matches 6 run bossbar set evercraft:hb_6 players @s
execute if score @s hb.slot matches 6 run scoreboard players set #hb_slot_6 hb.slot 1
execute if score @s hb.slot matches 7 run bossbar set evercraft:hb_7 players @s
execute if score @s hb.slot matches 7 run scoreboard players set #hb_slot_7 hb.slot 1
execute if score @s hb.slot matches 8 run bossbar set evercraft:hb_8 players @s
execute if score @s hb.slot matches 8 run scoreboard players set #hb_slot_8 hb.slot 1
execute if score @s hb.slot matches 9 run bossbar set evercraft:hb_9 players @s
execute if score @s hb.slot matches 9 run scoreboard players set #hb_slot_9 hb.slot 1
execute if score @s hb.slot matches 10 run bossbar set evercraft:hb_10 players @s
execute if score @s hb.slot matches 10 run scoreboard players set #hb_slot_10 hb.slot 1
