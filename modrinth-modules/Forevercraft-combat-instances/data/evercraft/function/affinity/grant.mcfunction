# === GRANT AFFINITY XP — MACRO ENTRY POINT ===
# Call: function evercraft:affinity/grant {class_id:N, delta:N}
# Used when caller knows the exact class (e.g., class-specific ability triggers)

$scoreboard players set @s ec.aff_class $(class_id)
$scoreboard players set #delta ec.temp $(delta)
function evercraft:affinity/internal_grant
