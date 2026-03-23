# Firebrand — On Kill Processing
# Extends Rampage, tracks kills for metamorphosis

advancement revoke @s only evercraft:spirit/firebrand/on_kill

# Track kills & progression
scoreboard players add @s ec.sp_kills 1
# Berserker: track damage taken (increment per kill as proxy for engagement)
scoreboard players add @s ec.sp_damage_taken 1
function evercraft:spirit/progression/track_on_hit

# === RAMPAGE EXTENSION ===
execute if entity @s[tag=ec.sp_rampage_active] run function evercraft:spirit/abilities/firebrand/rampage_extend
