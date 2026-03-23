# ============================================================
# Campfire Stories — Tell From History (macro)
# Called with storage evercraft:campfire {pick: <index>}
# Copies the picked entry to temp, then dispatches by type
# ============================================================
$data modify storage evercraft:campfire current set from storage evercraft:campfire history[$(pick)]

# Extract the story type and dispatch
execute if data storage evercraft:campfire {current:{type:"boss_kill"}} run function evercraft:campfire_stories/tell/boss_kill with storage evercraft:campfire current
execute if data storage evercraft:campfire {current:{type:"mythical_find"}} run function evercraft:campfire_stories/tell/mythical_find with storage evercraft:campfire current
execute if data storage evercraft:campfire {current:{type:"quest_heroic"}} run function evercraft:campfire_stories/tell/quest_heroic with storage evercraft:campfire current
execute if data storage evercraft:campfire {current:{type:"patron_mythical"}} run function evercraft:campfire_stories/tell/patron_mythical with storage evercraft:campfire current
execute if data storage evercraft:campfire {current:{type:"companion_eternal"}} run function evercraft:campfire_stories/tell/companion_eternal with storage evercraft:campfire current
execute if data storage evercraft:campfire {current:{type:"dream_milestone"}} run function evercraft:campfire_stories/tell/dream_milestone with storage evercraft:campfire current
