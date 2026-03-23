# Sentinel — Shield Block: +3 Impact
advancement revoke @s only evercraft:artifacts/striker/sentinel_block

execute unless entity @s[tag=ec.sk_sentinel] run return 0

scoreboard players add @s ec.sk_impact 3
scoreboard players set @s ec.sk_combat 100

# Cap at 75
execute if score @s ec.sk_impact matches 76.. run scoreboard players set @s ec.sk_impact 75
