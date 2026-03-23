# Refresh trades for all custom professions — runs every 1s on verified villagers
# Only called when no player is within 6 blocks (tick.mcfunction guards this)

# Ensure VillagerData.level = 5 (master) so all trade tiers are visible
data modify entity @s VillagerData.level set value 5

execute if entity @s[tag=more_professions_circut_board] run function evercraft:professions/jobs/circut_board/replace_trades
# Nymph removed — trades use max_uses:999999 so no refresh needed (refresh closes vanilla trade UI)
execute if entity @s[tag=more_professions_miner] run function evercraft:professions/jobs/miner/replace_trades
execute if entity @s[tag=more_professions_beekeeper] run function evercraft:professions/jobs/beekeeper/replace_trades
execute if entity @s[tag=more_professions_hunter] run function evercraft:professions/jobs/hunter/replace_trades
execute if entity @s[tag=more_professions_explorer] run function evercraft:professions/jobs/explorer/replace_trades
execute if entity @s[tag=more_professions_zookeeper] run function evercraft:professions/jobs/zookeeper/replace_trades
execute if entity @s[tag=more_professions_artificer] run function evercraft:professions/jobs/artificer/replace_trades
execute if entity @s[tag=more_professions_bartender] run function evercraft:professions/jobs/bartender/setup_all_trades
execute if entity @s[tag=more_professions_retired_adventurer] run function evercraft:professions/jobs/retired_adventurer/setup_all_trades
execute if entity @s[tag=more_professions_wise_wanderer] run function evercraft:professions/jobs/wise_wanderer/setup_all_trades

# Append daily special trade if this villager matches today's featured profession
function evercraft:professions/daily_special/append_trade

# Mark trades as set — skips rewrite for 30s until periodic refresh clears this tag
tag @s add ec.trades_set
