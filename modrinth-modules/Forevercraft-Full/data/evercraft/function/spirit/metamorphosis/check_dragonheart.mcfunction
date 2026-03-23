# Metamorphosis Check — Wyrmcleaver (Knight)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_shield_block matches 100000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_shield_block matches 100000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" Block 100,000 damage with Wyrmguard","color":"gray"}]
execute unless score @s ec.sp_shield_block matches 100000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" Block 100,000 damage (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_shield_block"},"color":"yellow"},{"text":" / 100,000)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" All 9 Knight shield abilities x100","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" All 9 Knight shield abilities x100","color":"dark_gray"}]

execute if score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" All advantage trees to level 15","color":"gray"}]
execute unless score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" All advantage trees to level 15","color":"dark_gray"}]
