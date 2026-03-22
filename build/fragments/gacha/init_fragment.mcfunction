# === FOUNTAIN OF ETERNAL DREAMS (GACHA SYSTEM) ===
function evercraft:gacha/load
scoreboard objectives add ec.spark trigger "Spark Claim"
scoreboard objectives add ec.ddex trigger "Dreamdust Exchange"
scoreboard players enable @a ec.spark
scoreboard players enable @a ec.ddex
