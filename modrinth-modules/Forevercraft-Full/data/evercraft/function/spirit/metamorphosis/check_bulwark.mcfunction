# Metamorphosis Check — Bulwark Shield (Tank)

execute if score @s ec.sp_taunts matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_taunts matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 mobs taunted","color":"gray"}]
execute unless score @s ec.sp_taunts matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 mobs taunted (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_taunts"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_total_absorb matches 1000000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_total_absorb matches 1000000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" Absorb 1,000,000 total damage","color":"gray"}]
execute unless score @s ec.sp_total_absorb matches 1000000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" Absorb 1,000,000 damage (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_absorb"},"color":"yellow"},{"text":" / 1,000,000)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" Complete Castle floor 100","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" Complete Castle floor 100","color":"dark_gray"}]

execute if score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" 100 hours deathless with Bulwark","color":"gray"}]
execute unless score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" 100 hours deathless with Bulwark","color":"dark_gray"}]
