# Trial Lockout — Set lockout for current trial type after completion
# Run as: the player. Stores current gametime into dg.lo_ttN based on ec.tt_type
execute if score @s ec.tt_type matches 1 store result score @s dg.lo_tt1 run time query gametime
execute if score @s ec.tt_type matches 2 store result score @s dg.lo_tt2 run time query gametime
execute if score @s ec.tt_type matches 3 store result score @s dg.lo_tt3 run time query gametime
execute if score @s ec.tt_type matches 4 store result score @s dg.lo_tt4 run time query gametime
execute if score @s ec.tt_type matches 5 store result score @s dg.lo_tt5 run time query gametime
execute if score @s ec.tt_type matches 6 store result score @s dg.lo_tt6 run time query gametime
