# Swift Strikes + Flowing Strikes — Battlestaff (Rare Beastlord)
# On hit: Increment flow counter. Every 3rd hit grants Haste I.
# If already Haste I, upgrades to Haste II.
# Counter resets after 3s of no hits (via schedule).

advancement revoke @s only evercraft:artifacts/abilities/swift_strikes_trigger

# Increment flow counter
scoreboard players add @s ec.flow_hits 1

# Schedule decay (resets after 3s of no hits)
schedule function evercraft:artifacts/abilities/flowing_strikes_decay 60t

# Every 3rd hit: grant or upgrade Haste
execute if score @s ec.flow_hits matches 3 run effect give @s haste 5 0 false
execute if score @s ec.flow_hits matches 3 at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 8
execute if score @s ec.flow_hits matches 3 run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 1.8
execute if score @s ec.flow_hits matches 3 run scoreboard players set @s ec.flow_hits 0

# At 6+ hits (2nd cycle while Haste I active): upgrade to Haste II
execute if score @s ec.flow_hits matches 6.. run effect give @s haste 5 1 false
execute if score @s ec.flow_hits matches 6.. at @s run particle enchant ~ ~1 ~ 0.5 0.8 0.5 1 15
execute if score @s ec.flow_hits matches 6.. run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.7 2.0
execute if score @s ec.flow_hits matches 6.. run scoreboard players set @s ec.flow_hits 0

# Small visual per hit (building momentum)
execute at @s run particle enchant ~ ~1 ~ 0.2 0.3 0.2 0.3 3

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
