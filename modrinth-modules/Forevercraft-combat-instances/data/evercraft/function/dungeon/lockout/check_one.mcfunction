# Dungeon Lockout — Check single structure lockout for expiry
# Input: #dg_lo_val ec.var (lockout gametime), #dg_struct_id ec.var, #dg_now ec.var
# Output: #dg_lo_expired ec.var (1 if expired, 0 if not)

scoreboard players set #dg_lo_expired ec.var 0
scoreboard players operation #dg_elapsed ec.var = #dg_now ec.var
scoreboard players operation #dg_elapsed ec.var -= #dg_lo_val ec.var
execute if score #dg_elapsed ec.var matches 504000.. run scoreboard players set #dg_lo_expired ec.var 1
execute if score #dg_elapsed ec.var matches 504000.. run function evercraft:dungeon/lockout/expired_notify
