# Metamorphosis Check — Lifewoven Branch (Healer)

execute if score @s ec.sp_combat_heals matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_combat_heals matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 HP healed in combat","color":"gray"}]
execute unless score @s ec.sp_combat_heals matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 HP healed in combat (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_combat_heals"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_ally_heals matches 250000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_ally_heals matches 250000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 250,000 ally HP healed","color":"gray"}]
execute unless score @s ec.sp_ally_heals matches 250000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 250,000 ally HP healed (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ally_heals"},"color":"yellow"},{"text":" / 250,000)","color":"dark_gray"}]

execute if score @s ec.sp_revives matches 500.. run scoreboard players set @s ec.sp_req6 1
execute if score @s ec.sp_revives matches 500.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" 500 player revives","color":"gray"}]
execute unless score @s ec.sp_revives matches 500.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" 500 player revives (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_revives"},"color":"yellow"},{"text":" / 500)","color":"dark_gray"}]

execute if score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Max all support advantage trees","color":"gray"}]
execute unless score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Max all support advantage trees","color":"dark_gray"}]
