# Trial Pass — Right-click to open trial GUI remotely
# Triggered by consume_item advancement

# Revoke so it can trigger again
advancement revoke @s only evercraft:craftforever/use_trial_pass

# Restore the pass (consume_item destroys it, we want it reusable until trial starts)
loot give @s loot evercraft:craftforever/trials/trial_pass

# Open the trial GUI
function evercraft:craftforever/trial_anvil/gui/open

