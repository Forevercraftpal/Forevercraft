# Mythical Tools - Load Function
# Sets up scoreboards for timber, 3x3 mining, and crop harvesting

# Timber (Axe of Honor)
scoreboard objectives add ec.timber dummy
scoreboard objectives add ec.used_n_axe minecraft.used:minecraft.netherite_axe
scoreboard players set #max_tree_size ec.timber 128

# Vein + 3x3 Mining (Journey Pickaxe)
scoreboard objectives add ec.veinminer dummy
scoreboard objectives add ec.pick_cd dummy
scoreboard objectives add ec.pick_mode dummy
scoreboard objectives add ec.used_n_pick minecraft.used:minecraft.netherite_pickaxe
scoreboard players set #max_vein_size ec.veinminer 64

# Crop Harvesting + Tilling (Hoe of Honor)
scoreboard objectives add ec.used_n_hoe minecraft.used:minecraft.netherite_hoe
