# Smelling Salts — Uncommon Healer
# Removes all negative effects + heals 1 heart (2 HP) within 12 blocks
# Cooldown: 18 seconds

advancement revoke @s only evercraft:artifacts/healer/use_salts
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"salts"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 3
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_salts matches 1.. run tellraw @s [{"text":"[Smelling Salts] ","color":"blue"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_salts"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_salts matches 1.. run return 0

# === CLEANSE + HEAL ===
execute at @s as @a[distance=..12] run effect clear @s poison
execute at @s as @a[distance=..12] run effect clear @s wither
execute at @s as @a[distance=..12] run effect clear @s slowness
execute at @s as @a[distance=..12] run effect clear @s mining_fatigue
execute at @s as @a[distance=..12] run effect clear @s blindness
execute at @s as @a[distance=..12] run effect clear @s hunger
execute at @s as @a[distance=..12] run effect clear @s nausea
execute at @s as @a[distance=..12] run effect clear @s darkness
execute at @s run effect give @a[distance=..12] instant_health 1 0 false
# Tamed animals
execute at @s as @e[type=#evercraft:tameable_companions,distance=..12,tag=ec.tame_protected] run effect clear @s poison
execute at @s as @e[type=#evercraft:tameable_companions,distance=..12,tag=ec.tame_protected] run effect clear @s wither
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..12,tag=ec.tame_protected] instant_health 1 0 true

# Feedback
execute at @s run playsound minecraft:entity.experience_orb.pickup master @a[distance=..12] ~ ~ ~ 1 1.5
execute at @s run particle scrape ~ ~1.5 ~ 1.5 0.5 1.5 0.05 15
tellraw @s [{"text":"[Smelling Salts] ","color":"blue"},{"text":"Cleansed and healed all players within 12 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..12,tag=!ec.healer_self] run tellraw @s [{"text":"[Smelling Salts] ","color":"blue"},{"text":"Toxins purged!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_salts 18
scoreboard players set @s ec.hl_locked 1
