# === APPLY BOOSTED DAMAGE ===
# Macro: $(total) = total damage amount
# @s = target entity, attacker = @a[tag=ec.aff_attacker]
$damage @s $(total) minecraft:player_attack by @a[tag=ec.aff_attacker,limit=1]
