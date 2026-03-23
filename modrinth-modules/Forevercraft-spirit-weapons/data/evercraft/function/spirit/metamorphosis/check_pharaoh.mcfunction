# Metamorphosis Check — Pharaoh's Fist (Striker)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_impact_hits matches 25000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_impact_hits matches 25000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 25,000 Impact Strikes","color":"gray"}]
execute unless score @s ec.sp_impact_hits matches 25000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 25,000 Impact Strikes (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_impact_hits"},"color":"yellow"},{"text":" / 25,000)","color":"dark_gray"}]

execute if score @s ec.sp_quests_done matches 200.. run scoreboard players set @s ec.sp_req6 1
execute if score @s ec.sp_quests_done matches 200.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" Complete 200 quests","color":"gray"}]
execute unless score @s ec.sp_quests_done matches 200.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" Complete 200 quests (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_quests_done"},"color":"yellow"},{"text":" / 200)","color":"dark_gray"}]

execute if score @s ec.sp_duel_wins matches 100.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_duel_wins matches 100.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Win 100 duels","color":"gray"}]
execute unless score @s ec.sp_duel_wins matches 100.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Win 100 duels (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_duel_wins"},"color":"yellow"},{"text":" / 100)","color":"dark_gray"}]
