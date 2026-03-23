#say init
scoreboard objectives remove more_professions_rng
scoreboard objectives add more_professions_rng dummy
scoreboard objectives add more_professions_visible_trade_progress dummy
scoreboard objectives add more_professions_trade_progress dummy
scoreboard objectives add more_professions_offers dummy
scoreboard objectives add mp.grace dummy "Profession Wipe Grace Period"
scoreboard objectives remove more_professions_binary
scoreboard objectives add more_professions_binary dummy

# Wise Wanderer — detect right-click via talked_to_villager stat (delta comparison)
scoreboard objectives add ec.ww_talked minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add ec.ww_talked_prev dummy
scoreboard objectives add ec.ww_idle dummy "Wise Wanderer Menu Inactivity"
schedule function evercraft:professions/jobs/wise_wanderer/gui/detect_interaction 1s replace

schedule function evercraft:professions/internal/tick 1s replace
