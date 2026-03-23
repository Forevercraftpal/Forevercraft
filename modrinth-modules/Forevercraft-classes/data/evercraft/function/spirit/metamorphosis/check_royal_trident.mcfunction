# Metamorphosis Check — Depthsworn (Hoplite)
# Reqs 4-7 (weapon-specific). Reqs 1-3 already checked by parent.

# Req 4: 50,000 kills
execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"\u2713","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"\u2717","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

# Req 5: Block 75,000 damage with shield
execute if score @s ec.sp_damage_blocked matches 75000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_damage_blocked matches 75000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"\u2713","color":"green"},{"text":" Block 75,000 damage with shield","color":"gray"}]
execute unless score @s ec.sp_damage_blocked matches 75000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"\u2717","color":"red"},{"text":" Block 75,000 damage (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_damage_blocked"},"color":"yellow"},{"text":" / 75,000)","color":"dark_gray"}]

# Req 6: Land 5,000 Counter Thrust attacks
execute if score @s ec.sp_counter_hits matches 5000.. run scoreboard players set @s ec.sp_req6 1
execute if score @s ec.sp_counter_hits matches 5000.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"\u2713","color":"green"},{"text":" Land 5,000 Counter Thrust attacks","color":"gray"}]
execute unless score @s ec.sp_counter_hits matches 5000.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"\u2717","color":"red"},{"text":" Land 5,000 Counter Thrusts (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_counter_hits"},"color":"yellow"},{"text":" / 5,000)","color":"dark_gray"}]

# Req 7: Complete Castle floor 40 as Hoplite
execute if score @s ec.sp_castle_hoplite matches 1.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_castle_hoplite matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"\u2713","color":"green"},{"text":" Complete Castle floor 40 as Hoplite","color":"gray"}]
execute unless score @s ec.sp_castle_hoplite matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"\u2717","color":"red"},{"text":" Complete Castle floor 40 as Hoplite","color":"dark_gray"}]
