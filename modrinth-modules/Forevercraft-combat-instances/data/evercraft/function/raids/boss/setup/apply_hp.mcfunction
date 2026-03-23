# Spirit Raids — Set max health and heal to full (macro)
# Expects $(hp_mod) = total desired max HP
$attribute @s max_health base set $(hp_mod)
# Tag as initializing — prevents phase/ability checks until healed
tag @s add ec.rd_initializing
# Heal scheduled 2 ticks later for safety (health clamping needs a tick)
schedule function evercraft:raids/boss/sync_hp 2t
