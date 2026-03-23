# Calculate challenge progress into #progress and #goal on adv.temp
# Shared by show_progress and periodic_reminder
scoreboard players set #goal adv.temp 0
scoreboard players set #progress adv.temp 0

# Delta-based: progress = current_stat - baseline
execute if score @s adv.chal_id matches 1 run scoreboard players operation #progress adv.temp = @s adv.stat_walk
execute if score @s adv.chal_id matches 1 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 1 run scoreboard players set #goal adv.temp 10000

execute if score @s adv.chal_id matches 3 run scoreboard players operation #progress adv.temp = @s adv.stat_attack
execute if score @s adv.chal_id matches 3 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 3 run scoreboard players set #goal adv.temp 50

execute if score @s adv.chal_id matches 6 run scoreboard players operation #progress adv.temp = @s adv.stat_crouch
execute if score @s adv.chal_id matches 6 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 6 run scoreboard players set #goal adv.temp 5000

execute if score @s adv.chal_id matches 7 run scoreboard players operation #progress adv.temp = @s adv.stat_dmg
execute if score @s adv.chal_id matches 7 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 7 run scoreboard players set #goal adv.temp 200

execute if score @s adv.chal_id matches 9 run scoreboard players operation #progress adv.temp = @s adv.stat_quests
execute if score @s adv.chal_id matches 9 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 9 run scoreboard players set #goal adv.temp 25

execute if score @s adv.chal_id matches 11 run scoreboard players operation #progress adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 11 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 11 run scoreboard players set #goal adv.temp 500

execute if score @s adv.chal_id matches 12 run scoreboard players operation #progress adv.temp = @s adv.stat_fish
execute if score @s adv.chal_id matches 12 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 12 run scoreboard players set #goal adv.temp 100

execute if score @s adv.chal_id matches 13 run scoreboard players operation #progress adv.temp = @s adv.stat_mine
execute if score @s adv.chal_id matches 13 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 13 run scoreboard players set #goal adv.temp 5000

execute if score @s adv.chal_id matches 14 run scoreboard players operation #progress adv.temp = @s adv.stat_ore
execute if score @s adv.chal_id matches 14 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 14 run scoreboard players set #goal adv.temp 500

execute if score @s adv.chal_id matches 15 run scoreboard players operation #progress adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 15 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 15 run scoreboard players set #goal adv.temp 1000

execute if score @s adv.chal_id matches 16 run scoreboard players operation #progress adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 16 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 16 run scoreboard players set #goal adv.temp 500

execute if score @s adv.chal_id matches 17 run scoreboard players operation #progress adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 17 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 17 run scoreboard players set #goal adv.temp 10

# Timer-based challenges: progress = chal_prog directly
execute if score @s adv.chal_id matches 2 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 2 run scoreboard players set #goal adv.temp 60

execute if score @s adv.chal_id matches 4 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 4 run scoreboard players set #goal adv.temp 50

execute if score @s adv.chal_id matches 5 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 5 run scoreboard players set #goal adv.temp 600

execute if score @s adv.chal_id matches 8 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 8 run scoreboard players set #goal adv.temp 604800

execute if score @s adv.chal_id matches 10 run scoreboard players operation #progress adv.temp = @s adv.stat_pets100
execute if score @s adv.chal_id matches 10 run scoreboard players set #goal adv.temp 3

# Weekly challenges (IDs 18-43) — delta-based progress
# 18 Wanderer: walk 15k
execute if score @s adv.chal_id matches 18 run scoreboard players operation #progress adv.temp = @s adv.stat_walk
execute if score @s adv.chal_id matches 18 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 18 run scoreboard players set #goal adv.temp 15000
# 19 Dash Master: sprint 120s (timer)
execute if score @s adv.chal_id matches 19 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 19 run scoreboard players set #goal adv.temp 120
# 20 Sharpshooter: 100 ranged hits
execute if score @s adv.chal_id matches 20 run scoreboard players operation #progress adv.temp = @s adv.stat_ranged
execute if score @s adv.chal_id matches 20 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 20 run scoreboard players set #goal adv.temp 100
# 21 Combo Artist: 10x combo (timer)
execute if score @s adv.chal_id matches 21 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 21 run scoreboard players set #goal adv.temp 10
# 22 Shadow Step: dodge 100 (timer)
execute if score @s adv.chal_id matches 22 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 22 run scoreboard players set #goal adv.temp 100
# 23 Ironwall: no damage 15 min (timer)
execute if score @s adv.chal_id matches 23 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 23 run scoreboard players set #goal adv.temp 900
# 24 Silent Hunter: 50 sneak kills (timer)
execute if score @s adv.chal_id matches 24 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 24 run scoreboard players set #goal adv.temp 50
# 25 Ghost Walk: sneak 10k
execute if score @s adv.chal_id matches 25 run scoreboard players operation #progress adv.temp = @s adv.stat_crouch
execute if score @s adv.chal_id matches 25 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 25 run scoreboard players set #goal adv.temp 10000
# 26 Juggernaut: take 500 damage
execute if score @s adv.chal_id matches 26 run scoreboard players operation #progress adv.temp = @s adv.stat_dmg
execute if score @s adv.chal_id matches 26 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 26 run scoreboard players set #goal adv.temp 500
# 27 Immortal: no death 14 days (timer)
execute if score @s adv.chal_id matches 27 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 27 run scoreboard players set #goal adv.temp 1209600
# 28 Completionist: 50 quests
execute if score @s adv.chal_id matches 28 run scoreboard players operation #progress adv.temp = @s adv.stat_quests
execute if score @s adv.chal_id matches 28 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 28 run scoreboard players set #goal adv.temp 50
# 29 Bounty Hunter: 10 bounties
execute if score @s adv.chal_id matches 29 run scoreboard players operation #progress adv.temp = @s ec.bounty_done
execute if score @s adv.chal_id matches 29 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 29 run scoreboard players set #goal adv.temp 10
# 30 Pack Leader: 5 pets max level
execute if score @s adv.chal_id matches 30 run scoreboard players operation #progress adv.temp = @s adv.stat_pets100
execute if score @s adv.chal_id matches 30 run scoreboard players set #goal adv.temp 5
# 31 Beast Bond: devoted with 3 pets (timer)
execute if score @s adv.chal_id matches 31 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 31 run scoreboard players set #goal adv.temp 3
# 32 Exterminator: kill 1000 mobs
execute if score @s adv.chal_id matches 32 run scoreboard players operation #progress adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 32 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 32 run scoreboard players set #goal adv.temp 1000
# 33 Trade Master: 100 trades
execute if score @s adv.chal_id matches 33 run scoreboard players operation #progress adv.temp = @s adv.stat_trades
execute if score @s adv.chal_id matches 33 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 33 run scoreboard players set #goal adv.temp 100
# 34 Deep Sea: catch 250 fish
execute if score @s adv.chal_id matches 34 run scoreboard players operation #progress adv.temp = @s adv.stat_fish
execute if score @s adv.chal_id matches 34 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 34 run scoreboard players set #goal adv.temp 250
# 35 Rain Fisher: 50 fish in rain (timer)
execute if score @s adv.chal_id matches 35 run scoreboard players operation #progress adv.temp = @s adv.chal_prog
execute if score @s adv.chal_id matches 35 run scoreboard players set #goal adv.temp 50
# 36 Core Driller: mine 10k
execute if score @s adv.chal_id matches 36 run scoreboard players operation #progress adv.temp = @s adv.stat_mine
execute if score @s adv.chal_id matches 36 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 36 run scoreboard players set #goal adv.temp 10000
# 37 Gem Hunter: mine 1000 ores
execute if score @s adv.chal_id matches 37 run scoreboard players operation #progress adv.temp = @s adv.stat_ore
execute if score @s adv.chal_id matches 37 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 37 run scoreboard players set #goal adv.temp 1000
# 38 Harvest Lord: harvest 2500 crops
execute if score @s adv.chal_id matches 38 run scoreboard players operation #progress adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 38 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 38 run scoreboard players set #goal adv.temp 2500
# 39 Green Revolution: harvest 500 crops in session
execute if score @s adv.chal_id matches 39 run scoreboard players operation #progress adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 39 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 39 run scoreboard players set #goal adv.temp 500
# 40 Master Smith: smelt 1000
execute if score @s adv.chal_id matches 40 run scoreboard players operation #progress adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 40 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 40 run scoreboard players set #goal adv.temp 1000
# 41 Furnace King: smelt 2000
execute if score @s adv.chal_id matches 41 run scoreboard players operation #progress adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 41 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 41 run scoreboard players set #goal adv.temp 2000
# 42 World Walker: 25 structure crates
execute if score @s adv.chal_id matches 42 run scoreboard players operation #progress adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 42 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 42 run scoreboard players set #goal adv.temp 25
# 43 Trailblazer: 50 structure crates
execute if score @s adv.chal_id matches 43 run scoreboard players operation #progress adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 43 run scoreboard players operation #progress adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 43 run scoreboard players set #goal adv.temp 50
