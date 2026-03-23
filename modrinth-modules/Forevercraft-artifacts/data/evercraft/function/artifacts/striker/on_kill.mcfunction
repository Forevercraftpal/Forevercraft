# Striker — On kill: +15 Impact + refresh combat timer
advancement revoke @s only evercraft:artifacts/striker/on_kill

execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] run return 0

scoreboard players add @s ec.sk_impact 15
scoreboard players set @s ec.sk_combat 100

# Cap
execute if entity @s[tag=!ec.sk_sentinel] if score @s ec.sk_impact matches 101.. run scoreboard players set @s ec.sk_impact 100
execute if entity @s[tag=ec.sk_sentinel] if score @s ec.sk_impact matches 76.. run scoreboard players set @s ec.sk_impact 75
