# Show Impact charge level on actionbar
# Run as @s (player) with ec.sk_impact >= 1

execute if score @s ec.sk_impact matches 1..24 run return run title @s actionbar [{"text":"Impact: ","color":"gray"},{"score":{"name":"@s","objective":"ec.sk_impact"},"color":"yellow"},{"text":"/100","color":"gray"}]
execute if score @s ec.sk_impact matches 25..49 run return run title @s actionbar [{"text":"Impact: ","color":"gray"},{"score":{"name":"@s","objective":"ec.sk_impact"},"color":"yellow"},{"text":" — ","color":"gray"},{"text":"Tremor","color":"green","bold":true}]
execute if score @s ec.sk_impact matches 50..74 run return run title @s actionbar [{"text":"Impact: ","color":"gray"},{"score":{"name":"@s","objective":"ec.sk_impact"},"color":"yellow"},{"text":" — ","color":"gray"},{"text":"Quake","color":"aqua","bold":true}]
execute if score @s ec.sk_impact matches 75..99 run return run title @s actionbar [{"text":"Impact: ","color":"gray"},{"score":{"name":"@s","objective":"ec.sk_impact"},"color":"yellow"},{"text":" — ","color":"gray"},{"text":"Shatter","color":"light_purple","bold":true}]
execute if score @s ec.sk_impact matches 100.. run return run title @s actionbar [{"text":"Impact: ","color":"gray"},{"text":"MAX","color":"red","bold":true},{"text":" — ","color":"gray"},{"text":"CATACLYSM","color":"dark_red","bold":true}]
