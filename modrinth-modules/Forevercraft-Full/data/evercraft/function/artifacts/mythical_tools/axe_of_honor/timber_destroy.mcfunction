# Axe of Honor - Timber Destroy
# Destroys the log at this position and drops loot

# Drop the log as item (using player's mainhand tool for correct drops)
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

# Remove the block (no 'destroy' — prevents double drops)
setblock ~ ~ ~ air
