# Handle cosmetic row click — run as the interaction entity
# Macro arg: tier (1-5)
# Find nearest player with menu open and toggle the cosmetic

# Clear interaction data so click doesn't repeat
data remove entity @s interaction

# Capture session for multiplayer-safe owner lookup
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

# Set the cosmetic value for the toggle function
$scoreboard players set #cosm_val adv.temp $(tier)

# Toggle cosmetic as the nearest menu player
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/cosmetics/toggle

# Refresh cosmetic display
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:advantage/gui/refresh_cosmetics
