# === ETERNAL CODEX — SHOW COMBINE/XP OPTIONS ===
# Shows clickable tellraw buttons below the actionbar tab name
# Run as: player

# --- COMBINE OPTIONS ---

# Combine with Tome of Experience (tier < 2, has tome in inventory)
execute if score @s ec.codex_tier matches ..1 if items entity @s container.* book[custom_data~{tome_of_experience:true}] run tellraw @s [{"text":"  "},{"text":"[\u2726 Combine with Tome of Experience]","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.codex_combine set 1"},"hover_event":{"action":"show_text","value":"Absorb the Tome to unlock XP Banking"}}]

# Combine with Portal Dial (tier = 2, has dial in inventory)
execute if score @s ec.codex_tier matches 2 if items entity @s container.* *[custom_data~{portal_dial:true}] run tellraw @s [{"text":"  "},{"text":"[\u2726 Combine with Portal Dial]","color":"#FF6B35","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.codex_combine set 2"},"hover_event":{"action":"show_text","value":"Upgrade to The Phoenix Codex"}}]

# --- XP BANK OPTIONS (tier >= 2) ---
execute if score @s ec.codex_tier matches 2.. run tellraw @s [{"text":"  "},{"text":"[\u2b07 Deposit XP]","color":"green","click_event":{"action":"run_command","command":"/trigger ec.codex_combine set 3"},"hover_event":{"action":"show_text","value":"Store your XP in the codex"}},{"text":"  ","color":"gray"},{"text":"[\u2b06 Withdraw XP]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.codex_combine set 4"},"hover_event":{"action":"show_text","value":"Retrieve your stored XP"}},{"text":"  (","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.tome_lvl"},"color":"yellow"},{"text":" lvls stored)","color":"dark_gray"}]
