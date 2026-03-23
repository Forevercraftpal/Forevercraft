# Metamorphosis Check — Soulstring (Archer)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_crits matches 5000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_crits matches 5000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 5,000 critical shots at 30+ blocks","color":"gray"}]
execute unless score @s ec.sp_crits matches 5000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 5,000 critical shots (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_crits"},"color":"yellow"},{"text":" / 5,000)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" Reach Castle floor 50","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" Reach Castle floor 50","color":"dark_gray"}]

execute if score @s ec.sp_speed_kill matches 1.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_speed_kill matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Kill a boss in under 60 seconds","color":"gray"}]
execute unless score @s ec.sp_speed_kill matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Kill a boss in under 60 seconds","color":"dark_gray"}]
