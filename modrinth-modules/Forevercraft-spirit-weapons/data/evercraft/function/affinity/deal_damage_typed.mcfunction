# === DEAL BOOSTED DAMAGE (TYPED) ===
# Run as target entity. Attacker = @a[tag=ec.aff_attacker]
# Args from storage evercraft:affinity temp:
#   total = boosted damage amount
#   damage_type = damage type (e.g. minecraft:mob_attack, minecraft:freeze)
$damage @s $(total) $(damage_type) by @a[tag=ec.aff_attacker,limit=1]
