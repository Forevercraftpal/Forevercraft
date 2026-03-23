# Guild Diplomacy — Check if this guild is allied with target
# Run as: guild marker entity
# $(target_id) = target guild ID to check
# Sets #gd_is_allied ec.temp to 1 if allied, 0 if not

$execute if data entity @s data.alliances[{id:$(target_id)}] run scoreboard players set #gd_is_allied ec.temp 1
