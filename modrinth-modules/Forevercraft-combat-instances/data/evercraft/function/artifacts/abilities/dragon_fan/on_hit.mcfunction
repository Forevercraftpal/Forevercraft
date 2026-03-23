# Draconic Gale - On Hit Effects
# Called when player hits an entity with Draconic Gale
# Includes: Skyward Strike (20% launch), Wind effect, Drain of the Dragon (lifesteal)
# Fire Breath is now triggered by right-click (consume_item advancement)

advancement revoke @s only evercraft:artifacts/abilities/dragon_fan/hit_trigger

# Drain of the Dragon - Lifesteal on every hit
effect give @s instant_health 1 0 true
particle dust{color:[0.8, 0.2, 0.8], scale:1.0} ~ ~1.2 ~ 0.4 0.4 0.4 0 8

# Roll for Skyward Strike (20% chance)
scoreboard players set #roll ec.var 0
execute store result score #roll ec.var run random value 1..100

# 20% chance (roll 1-20) to launch the target skyward
execute if score #roll ec.var matches 1..20 run function evercraft:artifacts/abilities/dragon_fan/skyward_strike

# Fire a wind charge projectile on hit
function evercraft:artifacts/abilities/dragon_fan/wind_gust

# Always apply a small wind burst visual
execute at @s run particle gust ~ ~1 ~ 0.5 0.5 0.5 0.1 8
execute at @s run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 0.5 1.2
