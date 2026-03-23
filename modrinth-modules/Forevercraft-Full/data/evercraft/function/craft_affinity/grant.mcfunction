# === CRAFTING AFFINITY — GRANT XP (MACRO) ===
# Call: function evercraft:craft_affinity/grant {class_id:N, delta:N}
# class_id: 1=ss, 2=lf, 3=gs, 4=tw, 5=sc, 6=lm
$scoreboard players set @s ec.caff_class $(class_id)
$scoreboard players set #delta ec.temp $(delta)
function evercraft:craft_affinity/internal_grant
