# Guild Diplomacy — Check if cooldown exists for target guild
# Run as: guild marker entity
# $(target_id) = target guild ID to check cooldown against
# Sets #gd_on_cooldown ec.temp to 1 if on cooldown, 0 if not

scoreboard players set #gd_on_cooldown ec.temp 0

# Get current gametime
execute store result score #gd_now ec.temp run time query gametime

# Check if any cooldown entry exists for this target
$execute if data entity @s data.cooldowns[{target_id:$(target_id)}] run function evercraft:guild/diplomacy/check_cooldown_time
