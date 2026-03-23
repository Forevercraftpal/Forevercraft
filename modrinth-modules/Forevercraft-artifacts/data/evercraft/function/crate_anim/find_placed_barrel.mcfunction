# Find a recently placed barrel near the player and start animation
# Macro args: $(tier), $(system_tag), $(plot_start), $(skin), $(nbt_key), $(nbt_val)
# Run as: the player who placed the barrel
# Run positioned: ~ ~1.6 ~ (eye height, shifted back to ~ ~ ~ below)
# $(nbt_key) = "fc_rarity" for fishing, "hc_rarity" for harvest
# $(nbt_val) = tier name (e.g., "common", "rare", "mythical")

tag @s add ec.searching
scoreboard players set @s cf.temp 0

# Primary: raycast from player's eyes in their look direction (covers up to 7 blocks)
$execute anchored eyes positioned ^ ^ ^ run function evercraft:crate_anim/raycast_find_barrel {tier:"$(tier)",system_tag:"$(system_tag)",plot_start:$(plot_start),skin:"$(skin)",nbt_key:"$(nbt_key)",nbt_val:"$(nbt_val)"}

# Fallback: grid scan around feet (in case player looked away between place and trigger)
# align xyz ensures the animation entity spawns at the barrel's block corner, not the player's decimal position
$execute if entity @s[tag=ec.searching] positioned ~ ~-1.6 ~ align xyz run function evercraft:crate_anim/scan_for_barrel {tier:"$(tier)",system_tag:"$(system_tag)",plot_start:$(plot_start),skin:"$(skin)",nbt_key:"$(nbt_key)",nbt_val:"$(nbt_val)"}
