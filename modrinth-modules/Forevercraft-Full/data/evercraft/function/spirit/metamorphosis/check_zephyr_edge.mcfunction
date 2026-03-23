# Metamorphosis Check — Zephyr Edge (Dancer)

execute if score @s ec.sp_kills matches 50000.. run scoreboard players set @s ec.sp_req4 1
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✓","color":"green"},{"text":" 50,000 kills","color":"gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  4. ","color":"white"},{"text":"✗","color":"red"},{"text":" 50,000 kills (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"},"color":"yellow"},{"text":" / 50,000)","color":"dark_gray"}]

execute if score @s ec.sp_dodges matches 10000.. run scoreboard players set @s ec.sp_req5 1
execute if score @s ec.sp_dodges matches 10000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✓","color":"green"},{"text":" 10,000 evasion procs","color":"gray"}]
execute unless score @s ec.sp_dodges matches 10000.. run tellraw @s [{"text":"  5. ","color":"white"},{"text":"✗","color":"red"},{"text":" 10,000 evasion procs (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_dodges"},"color":"yellow"},{"text":" / 10,000)","color":"dark_gray"}]

execute if score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✓","color":"green"},{"text":" All agility trees prestiged","color":"gray"}]
execute unless score @s ec.sp_req6 matches 1.. run tellraw @s [{"text":"  6. ","color":"white"},{"text":"✗","color":"red"},{"text":" All agility trees prestiged","color":"dark_gray"}]

execute if score @s ec.sp_flawless matches 1.. run scoreboard players set @s ec.sp_req7 1
execute if score @s ec.sp_flawless matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✓","color":"green"},{"text":" Defeat a boss without damage","color":"gray"}]
execute unless score @s ec.sp_flawless matches 1.. run tellraw @s [{"text":"  7. ","color":"white"},{"text":"✗","color":"red"},{"text":" Defeat a boss without damage","color":"dark_gray"}]
