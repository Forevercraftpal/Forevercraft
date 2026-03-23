# World Boss — Set max health and heal to full (macro)
# Expects $(hp_mod) = total desired max HP (NOT offset from base)
# Uses base set instead of modifier — base set applies immediately to health clamping
$attribute @s max_health base set $(hp_mod)
# Tag as initializing — prevents phase/ability checks until healed
tag @s add wb.initializing
# Heal scheduled 2 ticks later for safety
schedule function evercraft:bosses/summon/sync_hp 2t
