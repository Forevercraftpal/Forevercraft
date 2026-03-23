# Metamorphosis Check — Firebrand (Berserker)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_damage_taken matches 500000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_damage_taken matches 500000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 500,000 damage taken","color":"gray"}]
execute unless score @s ec.sp_damage_taken matches 500000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 500,000 damage taken (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_damage_taken"},"color":"yellow"},{"text":" / 500,000)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" 100 kills in a single run","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" 100 kills in a single run","color":"dark_gray"}]

execute if score @s ec.sp_guild_exp matches 50.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_guild_exp matches 50.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50 guild expeditions","color":"gray"}]
execute unless score @s ec.sp_guild_exp matches 50.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50 guild expeditions (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_guild_exp"},"color":"yellow"},{"text":" / 50)","color":"dark_gray"}]
