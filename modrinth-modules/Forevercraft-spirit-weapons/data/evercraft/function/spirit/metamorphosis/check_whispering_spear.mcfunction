# Metamorphosis Check — Thornmaw (Beastlord)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills (player + pet)","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_bonds matches 10.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_bonds matches 10.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" Eternal Bond with 10 pets","color":"gray"}]
execute unless score @s ec.sp_bonds matches 10.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" Eternal Bond with 10 pets (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_bonds"},"color":"yellow"},{"text":" / 10)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" Complete all 25 pet memories","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" Complete all 25 pet memories","color":"dark_gray"}]

execute if score @s ec.sp_pets_found matches 93.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_pets_found matches 93.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Discover all 93 pets","color":"gray"}]
execute unless score @s ec.sp_pets_found matches 93.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Discover all 93 pets (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_pets_found"},"color":"yellow"},{"text":" / 93)","color":"dark_gray"}]
