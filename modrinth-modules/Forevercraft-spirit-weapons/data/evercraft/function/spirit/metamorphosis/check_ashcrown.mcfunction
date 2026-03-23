# Metamorphosis Check — Ashcrown Mace (Sentinel)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_damage_blocked matches 100000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_damage_blocked matches 100000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" Block 100,000 damage","color":"gray"}]
execute unless score @s ec.sp_damage_blocked matches 100000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" Block 100,000 damage (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_damage_blocked"},"color":"yellow"},{"text":" / 100,000)","color":"dark_gray"}]

execute if score @s ec.sp_ally_protect matches 50000.. run scoreboard players set @s ec.sp_req6 1
execute if score @s ec.sp_ally_protect matches 50000.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" Protect allies from 50,000 damage","color":"gray"}]
execute unless score @s ec.sp_ally_protect matches 50000.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" Protect allies from 50,000 damage (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ally_protect"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Max defense trees + 5 Sentinel maces","color":"gray"}]
execute unless score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Max defense trees + 5 Sentinel maces","color":"dark_gray"}]
