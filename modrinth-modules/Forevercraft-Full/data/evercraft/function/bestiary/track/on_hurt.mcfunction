# Bestiary — On Hurt (Macro)
# Called from bestiary/track/hurt_by/<mob>.mcfunction wrapper
# Args: {pow:"#pow1", field:"lo"}
# Run as the player who was hurt

# Check if already tracked — extract bit
$scoreboard players operation #bs_check bs.temp = @s bs.hurt_$(field)
$scoreboard players operation #bs_check bs.temp /= $(pow) bs.temp
scoreboard players operation #bs_check bs.temp %= #2 bs.temp
execute if score #bs_check bs.temp matches 1 run return 0

# Set the hurt-by bit
$scoreboard players operation @s bs.hurt_$(field) += $(pow) bs.temp
