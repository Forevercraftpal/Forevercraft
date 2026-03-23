# Reaper Deeds — Delta-detect vanilla stat changes
# Run as each player

# === PLAYER KILLS (infamy +150 per kill, outside duels) ===
scoreboard players operation #rp_delta rp.temp = @s rp.stat_pk
scoreboard players operation #rp_delta rp.temp -= @s rp.pk_snap
execute if score #rp_delta rp.temp matches 1.. unless entity @s[tag=ec.duel_active_tag] run function evercraft:reaper/deeds/on_player_kill
scoreboard players operation @s rp.pk_snap = @s rp.stat_pk

# === VILLAGER KILLS (infamy +100 per kill) ===
scoreboard players operation #rp_delta rp.temp = @s rp.stat_vk
scoreboard players operation #rp_delta rp.temp -= @s rp.vk_snap
execute if score #rp_delta rp.temp matches 1.. run function evercraft:reaper/deeds/on_villager_kill
scoreboard players operation @s rp.vk_snap = @s rp.stat_vk

# === IRON GOLEM KILLS (infamy +50 per kill) ===
scoreboard players operation #rp_delta rp.temp = @s rp.stat_gk
scoreboard players operation #rp_delta rp.temp -= @s rp.gk_snap
execute if score #rp_delta rp.temp matches 1.. run function evercraft:reaper/deeds/on_golem_kill
scoreboard players operation @s rp.gk_snap = @s rp.stat_gk

# === VILLAGER TRADES (renown +10 per trade, cap 100/day) ===
scoreboard players operation #rp_delta rp.temp = @s rp.stat_trade
scoreboard players operation #rp_delta rp.temp -= @s rp.trade_snap
execute if score #rp_delta rp.temp matches 1.. run function evercraft:reaper/deeds/on_trade
scoreboard players operation @s rp.trade_snap = @s rp.stat_trade
