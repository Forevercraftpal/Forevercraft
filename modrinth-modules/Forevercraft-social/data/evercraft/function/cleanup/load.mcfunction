# Batch Entity Cleanup — Load
# Bootstrap the 5-second cleanup tick for orphaned/leaked entities
schedule function evercraft:cleanup/tick 100t

# Bootstrap the 60-second auto GUI cleanup sweep
schedule function evercraft:cleanup/gui_auto 60s replace
