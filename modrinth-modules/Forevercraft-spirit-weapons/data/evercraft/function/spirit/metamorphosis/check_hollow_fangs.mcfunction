# Metamorphosis Check — Hollow Fangs (Rogue)

# Req 4: 50,000 kills
execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

# Req 5: 10,000 stealth kills
execute if score @s ec.sp_stealth_kills matches 10000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_stealth_kills matches 10000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 10,000 stealth kills","color":"gray"}]
execute unless score @s ec.sp_stealth_kills matches 10000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 10,000 stealth kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"},"color":"yellow"},{"text":" / 10,000)","color":"dark_gray"}]

# Req 6: Complete 100 dungeon floors
execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" 100 dungeon floors completed","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" 100 dungeon floors completed","color":"dark_gray"}]

# Req 7: Solo the Hollow Sovereign
execute if score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Solo the Hollow Sovereign","color":"gray"}]
execute unless score @s ec.sp_req7 matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Solo the Hollow Sovereign","color":"dark_gray"}]
