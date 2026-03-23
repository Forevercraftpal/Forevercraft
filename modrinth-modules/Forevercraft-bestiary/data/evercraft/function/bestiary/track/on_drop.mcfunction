# Bestiary — On Drop (Macro)
# Called from mob_crates/drop/regular.mcfunction after tier roll succeeds
# Args: {dscore:"bs.d_blaze"} — reads #bs_tier_bit from bs.temp
# Run as the player who received the drop

# OR the tier bit into the mob's drop scoreboard
# #bs_tier_bit was set by regular.mcfunction (1/2/4/8/16/32)
$scoreboard players operation @s $(dscore) += #bs_tier_bit bs.temp
