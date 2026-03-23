# Dungeon Lockout — Set lockout score for current structure
# Stores gametime into dg.lo_X for all dg.player-tagged participants
# Input: #dg_struct_id ec.var. Also sets dg.lo_any = 1 (gate flag)

execute if score #dg_struct_id ec.var matches 1 store result score @a[tag=dg.player] dg.lo_1 run time query gametime
execute if score #dg_struct_id ec.var matches 2 store result score @a[tag=dg.player] dg.lo_2 run time query gametime
execute if score #dg_struct_id ec.var matches 3 store result score @a[tag=dg.player] dg.lo_3 run time query gametime
execute if score #dg_struct_id ec.var matches 4 store result score @a[tag=dg.player] dg.lo_4 run time query gametime
execute if score #dg_struct_id ec.var matches 5 store result score @a[tag=dg.player] dg.lo_5 run time query gametime
execute if score #dg_struct_id ec.var matches 6 store result score @a[tag=dg.player] dg.lo_6 run time query gametime
execute if score #dg_struct_id ec.var matches 7 store result score @a[tag=dg.player] dg.lo_7 run time query gametime
execute if score #dg_struct_id ec.var matches 8 store result score @a[tag=dg.player] dg.lo_8 run time query gametime
execute if score #dg_struct_id ec.var matches 9 store result score @a[tag=dg.player] dg.lo_9 run time query gametime
execute if score #dg_struct_id ec.var matches 10 store result score @a[tag=dg.player] dg.lo_10 run time query gametime
execute if score #dg_struct_id ec.var matches 11 store result score @a[tag=dg.player] dg.lo_11 run time query gametime
execute if score #dg_struct_id ec.var matches 12 store result score @a[tag=dg.player] dg.lo_12 run time query gametime
execute if score #dg_struct_id ec.var matches 13 store result score @a[tag=dg.player] dg.lo_13 run time query gametime
execute if score #dg_struct_id ec.var matches 14 store result score @a[tag=dg.player] dg.lo_14 run time query gametime
execute if score #dg_struct_id ec.var matches 17 store result score @a[tag=dg.player] dg.lo_17 run time query gametime
execute if score #dg_struct_id ec.var matches 18 store result score @a[tag=dg.player] dg.lo_18 run time query gametime
execute if score #dg_struct_id ec.var matches 19 store result score @a[tag=dg.player] dg.lo_19 run time query gametime

# Set gate flag so expiry tick checks this player
scoreboard players set @a[tag=dg.player] dg.lo_any 1
