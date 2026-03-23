# Metamorphosis Check — Soul Piercer (Javelin)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_thrown_kills matches 5000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_thrown_kills matches 5000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 5,000 thrown kills","color":"gray"}]
execute unless score @s ec.sp_thrown_kills matches 5000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 5,000 thrown kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_thrown_kills"},"color":"yellow"},{"text":" / 5,000)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" Explore all ocean structures x10","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" Explore all ocean structures x10","color":"dark_gray"}]

execute if score @s ec.sp_snipe_kills matches 500.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_snipe_kills matches 500.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" 500 throw-kills from 50+ blocks","color":"gray"}]
execute unless score @s ec.sp_snipe_kills matches 500.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" 500 throw-kills from 50+ blocks (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_snipe_kills"},"color":"yellow"},{"text":" / 500)","color":"dark_gray"}]
