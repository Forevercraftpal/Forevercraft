# Forevercraft Main Init - Run on datapack load
# Initializes all Forevercraft systems


# === NEWCOMER SPIRIT WEAPON CHOICE ===
scoreboard objectives add ec.newcomer_pick trigger "Spirit Weapon Choice"
scoreboard players enable @a ec.newcomer_pick


# === NOTIFICATION VOLUME CONTROL ===
scoreboard objectives add ec.notify_lvl trigger "Notify Level"
scoreboard objectives add ec.notify dummy "Notify Setting"
scoreboard players enable @a ec.notify_lvl
