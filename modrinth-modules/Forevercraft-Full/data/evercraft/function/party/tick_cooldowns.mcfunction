# Party Cooldown Decrements — per-player (called as @a from party/tick)
# OPT: Single @a scan instead of 9 separate ones (saves 8 selector evaluations/s)
execute if score @s ec.pc_mark_cd matches 1.. run scoreboard players remove @s ec.pc_mark_cd 20
execute if score @s ec.pc_shield_cd matches 1.. run scoreboard players remove @s ec.pc_shield_cd 20
execute if score @s ec.pc_blitz_cd matches 1.. run scoreboard players remove @s ec.pc_blitz_cd 20
execute if score @s ec.pc_medic_cd matches 1.. run scoreboard players remove @s ec.pc_medic_cd 20
execute if score @s ec.pc_rally_cd matches 1.. run scoreboard players remove @s ec.pc_rally_cd 20
execute if score @s ec.pc_fortune_cd matches 1.. run scoreboard players remove @s ec.pc_fortune_cd 20
execute if score @s ec.pc_forge_cd matches 1.. run scoreboard players remove @s ec.pc_forge_cd 20
# Rally Cry temporary DR timer
execute if score @s ec.pc_rally_dr matches 1.. run scoreboard players remove @s ec.pc_rally_dr 20
# Ping cooldown
execute if score @s ec.pc_ping_cd matches 1.. run scoreboard players remove @s ec.pc_ping_cd 20
# Invite cooldown
execute if score @s ec.party_inv_cd matches 1.. run scoreboard players remove @s ec.party_inv_cd 20
