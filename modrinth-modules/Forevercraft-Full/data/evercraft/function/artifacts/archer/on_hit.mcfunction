# Archer Bow — On Hit (arrow damages an entity)
# Called by player_hurt_entity advancement when arrow damage is dealt
advancement revoke @s only evercraft:artifacts/archer/hit

# Check if player has an active archer bow ID
execute unless score @s ec.ar_bow_id matches 1.. run return 0

# === ARROW HIT TING ===
playsound minecraft:entity.arrow.hit_player player @s

# === PREDATOR MARK BONUS (+50% damage to marked target, with affinity boost) ===
tag @s add ec.aff_attacker
scoreboard players set #aff_base ec.temp 3
function evercraft:affinity/boost_damage
data modify storage evercraft:affinity temp.damage_type set value "minecraft:generic"
execute at @s as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s},tag=ec.ar_marked] run function evercraft:affinity/deal_damage_typed with storage evercraft:affinity temp
tag @s remove ec.aff_attacker

# === OVERCHARGE HIT ===
execute if score @s ec.ar_charged matches 1 at @s run function evercraft:artifacts/archer/overcharge_hit

# === PASSIVE HIT EFFECTS ===
execute if score @s ec.ar_charged matches 0 at @s run function evercraft:artifacts/archer/passive_hit
