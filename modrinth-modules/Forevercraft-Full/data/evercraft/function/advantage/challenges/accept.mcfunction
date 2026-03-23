# Accept a challenge
# #chal_val adv.temp = challenge ID (1-17)

# Check if player already has an active challenge
execute if score @s adv.chal_id matches 1.. run return run tellraw @s [{text:"You already have an active challenge! ",color:"red"},{text:"[Cancel it]",color:"gray",click_event:{action:run_command,command:"/trigger adv.challenge set -1"}}]

# Check cancel lockout (1 day = 72000 gametime ticks)
execute store result score #now adv.temp run time query gametime
scoreboard players operation #elapsed adv.temp = #now adv.temp
scoreboard players operation #elapsed adv.temp -= @s adv.chal_cancel
# Remaining minutes = (72000 - elapsed) / 1200
scoreboard players set #lockout adv.temp 72000
scoreboard players operation #lockout adv.temp -= #elapsed adv.temp
scoreboard players operation #lockout adv.temp /= #1200 adv.temp
scoreboard players add #lockout adv.temp 1
execute if score @s adv.chal_cancel matches 1.. if score #elapsed adv.temp matches ..71999 run return run tellraw @s [{text:"You cancelled a challenge recently. ",color:"red"},{text:"Locked for ~",color:"gray"},{score:{name:"#lockout",objective:"adv.temp"},color:"yellow"},{text:" min.",color:"gray"}]

# Set the initial challenge ID from click
scoreboard players operation @s adv.chal_id = #chal_val adv.temp

# Randomize variant for multi-challenge trees (50/50)
# Agility: 1 (Marathon) or 2 (Speedster)
execute if score @s adv.chal_id matches 1 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 1 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 2
# Evasion: 4 (Ghost) or 5 (Untouched)
execute if score @s adv.chal_id matches 4 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 4 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 5
# Vitality: 7 (Tank) or 8 (Deathless)
execute if score @s adv.chal_id matches 7 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 7 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 8
# Mining: 13 (Deep Core) or 14 (Fortunate)
execute if score @s adv.chal_id matches 13 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 13 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 14

# Weekly-exclusive challenges: if this tree is the weekly featured tree, 50% chance to assign weekly variant
# Tree 1 (Agility) → IDs 18-19, Tree 2 (Dex) → 20-21, ... Tree 13 (Explorer) → 42-43
execute store result score #wk_tree_check adv.temp run scoreboard players get #adv_weekly_tree adv.temp
execute if score @s adv.chal_id matches 1..2 if score #wk_tree_check adv.temp matches 1 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 1..2 if score #wk_tree_check adv.temp matches 1 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 18
execute if score @s adv.chal_id matches 18 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 18 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 19
execute if score @s adv.chal_id matches 3 if score #wk_tree_check adv.temp matches 2 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 3 if score #wk_tree_check adv.temp matches 2 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 20
execute if score @s adv.chal_id matches 20 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 20 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 21
execute if score @s adv.chal_id matches 4..5 if score #wk_tree_check adv.temp matches 3 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 4..5 if score #wk_tree_check adv.temp matches 3 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 22
execute if score @s adv.chal_id matches 22 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 22 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 23
execute if score @s adv.chal_id matches 6 if score #wk_tree_check adv.temp matches 4 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 6 if score #wk_tree_check adv.temp matches 4 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 24
execute if score @s adv.chal_id matches 24 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 24 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 25
execute if score @s adv.chal_id matches 7..8 if score #wk_tree_check adv.temp matches 5 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 7..8 if score #wk_tree_check adv.temp matches 5 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 26
execute if score @s adv.chal_id matches 26 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 26 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 27
execute if score @s adv.chal_id matches 9 if score #wk_tree_check adv.temp matches 6 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 9 if score #wk_tree_check adv.temp matches 6 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 28
execute if score @s adv.chal_id matches 28 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 28 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 29
execute if score @s adv.chal_id matches 10 if score #wk_tree_check adv.temp matches 7 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 10 if score #wk_tree_check adv.temp matches 7 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 30
execute if score @s adv.chal_id matches 30 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 30 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 31
execute if score @s adv.chal_id matches 11 if score #wk_tree_check adv.temp matches 8 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 11 if score #wk_tree_check adv.temp matches 8 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 32
execute if score @s adv.chal_id matches 32 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 32 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 33
execute if score @s adv.chal_id matches 12 if score #wk_tree_check adv.temp matches 9 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 12 if score #wk_tree_check adv.temp matches 9 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 34
execute if score @s adv.chal_id matches 34 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 34 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 35
execute if score @s adv.chal_id matches 13..14 if score #wk_tree_check adv.temp matches 10 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 13..14 if score #wk_tree_check adv.temp matches 10 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 36
execute if score @s adv.chal_id matches 36 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 36 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 37
execute if score @s adv.chal_id matches 15 if score #wk_tree_check adv.temp matches 11 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 15 if score #wk_tree_check adv.temp matches 11 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 38
execute if score @s adv.chal_id matches 38 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 38 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 39
execute if score @s adv.chal_id matches 16 if score #wk_tree_check adv.temp matches 12 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 16 if score #wk_tree_check adv.temp matches 12 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 40
execute if score @s adv.chal_id matches 40 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 40 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 41
execute if score @s adv.chal_id matches 17 if score #wk_tree_check adv.temp matches 13 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 17 if score #wk_tree_check adv.temp matches 13 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 42
execute if score @s adv.chal_id matches 42 store result score #rand adv.temp run random value 0..1
execute if score @s adv.chal_id matches 42 if score #rand adv.temp matches 1 run scoreboard players set @s adv.chal_id 43

# Map challenge ID to tree ID
execute if score @s adv.chal_id matches 1..2 run scoreboard players set @s adv.chal_tree 1
execute if score @s adv.chal_id matches 3 run scoreboard players set @s adv.chal_tree 2
execute if score @s adv.chal_id matches 4..5 run scoreboard players set @s adv.chal_tree 3
execute if score @s adv.chal_id matches 6 run scoreboard players set @s adv.chal_tree 4
execute if score @s adv.chal_id matches 7..8 run scoreboard players set @s adv.chal_tree 5
execute if score @s adv.chal_id matches 9 run scoreboard players set @s adv.chal_tree 6
execute if score @s adv.chal_id matches 10 run scoreboard players set @s adv.chal_tree 7
execute if score @s adv.chal_id matches 11 run scoreboard players set @s adv.chal_tree 8
execute if score @s adv.chal_id matches 12 run scoreboard players set @s adv.chal_tree 9
execute if score @s adv.chal_id matches 13..14 run scoreboard players set @s adv.chal_tree 10
execute if score @s adv.chal_id matches 15 run scoreboard players set @s adv.chal_tree 11
execute if score @s adv.chal_id matches 16 run scoreboard players set @s adv.chal_tree 12
execute if score @s adv.chal_id matches 17 run scoreboard players set @s adv.chal_tree 13

# Weekly challenge tree mapping (IDs 18-43, 2 per tree)
execute if score @s adv.chal_id matches 18..19 run scoreboard players set @s adv.chal_tree 1
execute if score @s adv.chal_id matches 20..21 run scoreboard players set @s adv.chal_tree 2
execute if score @s adv.chal_id matches 22..23 run scoreboard players set @s adv.chal_tree 3
execute if score @s adv.chal_id matches 24..25 run scoreboard players set @s adv.chal_tree 4
execute if score @s adv.chal_id matches 26..27 run scoreboard players set @s adv.chal_tree 5
execute if score @s adv.chal_id matches 28..29 run scoreboard players set @s adv.chal_tree 6
execute if score @s adv.chal_id matches 30..31 run scoreboard players set @s adv.chal_tree 7
execute if score @s adv.chal_id matches 32..33 run scoreboard players set @s adv.chal_tree 8
execute if score @s adv.chal_id matches 34..35 run scoreboard players set @s adv.chal_tree 9
execute if score @s adv.chal_id matches 36..37 run scoreboard players set @s adv.chal_tree 10
execute if score @s adv.chal_id matches 38..39 run scoreboard players set @s adv.chal_tree 11
execute if score @s adv.chal_id matches 40..41 run scoreboard players set @s adv.chal_tree 12
execute if score @s adv.chal_id matches 42..43 run scoreboard players set @s adv.chal_tree 13

# Store baseline stat value for delta-tracking challenges
# For timer challenges (2, 5, 8), start at 0
execute if score @s adv.chal_id matches 2 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 4 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 5 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 8 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 10 run scoreboard players set @s adv.chal_prog 0

# For stat-delta challenges, store current stat as baseline
execute if score @s adv.chal_id matches 1 run scoreboard players operation @s adv.chal_prog = @s adv.stat_walk
execute if score @s adv.chal_id matches 3 run scoreboard players operation @s adv.chal_prog = @s adv.stat_attack
execute if score @s adv.chal_id matches 6 run scoreboard players operation @s adv.chal_prog = @s adv.stat_crouch
execute if score @s adv.chal_id matches 7 run scoreboard players operation @s adv.chal_prog = @s adv.stat_dmg
execute if score @s adv.chal_id matches 9 run scoreboard players operation @s adv.chal_prog = @s adv.stat_quests
execute if score @s adv.chal_id matches 11 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mobs
execute if score @s adv.chal_id matches 12 run scoreboard players operation @s adv.chal_prog = @s adv.stat_fish
execute if score @s adv.chal_id matches 13 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mine
execute if score @s adv.chal_id matches 14 run scoreboard players operation @s adv.chal_prog = @s adv.stat_ore
execute if score @s adv.chal_id matches 15 run scoreboard players operation @s adv.chal_prog = @s adv.stat_harvest
execute if score @s adv.chal_id matches 16 run scoreboard players operation @s adv.chal_prog = @s adv.stat_smelt
execute if score @s adv.chal_id matches 17 run scoreboard players operation @s adv.chal_prog = @s adv.stat_struct

# Weekly challenge baselines (IDs 18-43)
execute if score @s adv.chal_id matches 18 run scoreboard players operation @s adv.chal_prog = @s adv.stat_walk
execute if score @s adv.chal_id matches 19 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 20 run scoreboard players operation @s adv.chal_prog = @s adv.stat_ranged
execute if score @s adv.chal_id matches 21 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 21 run scoreboard players operation @s adv.chal_aux = @s adv.stat_mobs
execute if score @s adv.chal_id matches 22 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 23 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 24 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 24 run scoreboard players operation @s adv.chal_aux = @s adv.stat_mobs
execute if score @s adv.chal_id matches 25 run scoreboard players operation @s adv.chal_prog = @s adv.stat_crouch
execute if score @s adv.chal_id matches 26 run scoreboard players operation @s adv.chal_prog = @s adv.stat_dmg
execute if score @s adv.chal_id matches 27 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 28 run scoreboard players operation @s adv.chal_prog = @s adv.stat_quests
execute if score @s adv.chal_id matches 29 run scoreboard players operation @s adv.chal_prog = @s ec.bounty_done
execute if score @s adv.chal_id matches 30 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 31 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 32 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mobs
execute if score @s adv.chal_id matches 33 run scoreboard players operation @s adv.chal_prog = @s adv.stat_trades
execute if score @s adv.chal_id matches 34 run scoreboard players operation @s adv.chal_prog = @s adv.stat_fish
execute if score @s adv.chal_id matches 35 run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 35 run scoreboard players operation @s adv.chal_aux = @s adv.stat_fish
execute if score @s adv.chal_id matches 36 run scoreboard players operation @s adv.chal_prog = @s adv.stat_mine
execute if score @s adv.chal_id matches 37 run scoreboard players operation @s adv.chal_prog = @s adv.stat_ore
execute if score @s adv.chal_id matches 38 run scoreboard players operation @s adv.chal_prog = @s adv.stat_harvest
execute if score @s adv.chal_id matches 39 run scoreboard players operation @s adv.chal_prog = @s adv.stat_harvest
execute if score @s adv.chal_id matches 40 run scoreboard players operation @s adv.chal_prog = @s adv.stat_smelt
execute if score @s adv.chal_id matches 41 run scoreboard players operation @s adv.chal_prog = @s adv.stat_smelt
execute if score @s adv.chal_id matches 42 run scoreboard players operation @s adv.chal_prog = @s adv.stat_struct
execute if score @s adv.chal_id matches 43 run scoreboard players operation @s adv.chal_prog = @s adv.stat_struct

# Reset 75% milestone flag
scoreboard players set @s adv.chal_75 0

# Clear any cancel lockout (successful accept resets it)
scoreboard players set @s adv.chal_cancel 0

# Reset periodic reminder timer
scoreboard players set @s adv.chal_remind 0
scoreboard players set @s adv.chal_lprog 0

# Feedback — show challenge name and goal
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.2
tellraw @s [{text:"✦ ",color:"gold"},{text:"Challenge accepted!",color:"green"}]
execute if score @s adv.chal_id matches 1 run tellraw @s [{text:"  "},{text:"Marathon",color:"aqua",bold:true},{text:" — Walk 10,000 blocks",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 2 run tellraw @s [{text:"  "},{text:"Speedster",color:"aqua",bold:true},{text:" — Sprint 60s nonstop",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 3 run tellraw @s [{text:"  "},{text:"Marksman",color:"yellow",bold:true},{text:" — Land 50 attacks on mobs",color:"gray"},{text:" (30 XP + 3 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 4 run tellraw @s [{text:"  "},{text:"Ghost",color:"white",bold:true},{text:" — Dodge 50 attacks",color:"gray"},{text:" (77 XP + 7 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 5 run tellraw @s [{text:"  "},{text:"Untouched",color:"white",bold:true},{text:" — No damage for 10 min",color:"gray"},{text:" (30 XP + 3 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 6 run tellraw @s [{text:"  "},{text:"Phantom",color:"dark_gray",bold:true},{text:" — Sneak 5,000 blocks",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 7 run tellraw @s [{text:"  "},{text:"Tank",color:"red",bold:true},{text:" — Take 200 damage",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 8 run tellraw @s [{text:"  "},{text:"Deathless",color:"red",bold:true},{text:" — Don't die for 7 days",color:"gray"},{text:" (77 XP + 7 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 9 run tellraw @s [{text:"  "},{text:"Grinder",color:"dark_purple",bold:true},{text:" — Complete 25 quests",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 10 run tellraw @s [{text:"  "},{text:"Pack Alpha",color:"green",bold:true},{text:" — Max 3 pets",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 11 run tellraw @s [{text:"  "},{text:"Slayer",color:"dark_red",bold:true},{text:" — Kill 500 mobs",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 12 run tellraw @s [{text:"  "},{text:"Perfect Cast",color:"blue",bold:true},{text:" — Catch 100 fish",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 13 run tellraw @s [{text:"  "},{text:"Deep Core",color:"gold",bold:true},{text:" — Mine 5,000 blocks",color:"gray"},{text:" (100 XP + 10 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 14 run tellraw @s [{text:"  "},{text:"Fortunate",color:"gold",bold:true},{text:" — Mine 500 ores",color:"gray"},{text:" (15 XP + 1 token)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 15 run tellraw @s [{text:"  "},{text:"Green Thumb",color:"green",bold:true},{text:" — Harvest 1,000 crops",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 16 run tellraw @s [{text:"  "},{text:"Iron Chef",color:"gray",bold:true},{text:" — Smelt 500 items",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]
execute if score @s adv.chal_id matches 17 run tellraw @s [{text:"  "},{text:"Cartographer",color:"dark_aqua",bold:true},{text:" — Find 10 structure crates",color:"gray"},{text:" (50 XP + 5 tokens)",color:"dark_gray"}]

# Weekly challenge feedback (IDs 18-43)
execute if score @s adv.chal_id matches 18 run tellraw @s [{text:"  "},{text:"Wanderer",color:"gold",bold:true},{text:" — Walk 15,000 blocks",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 19 run tellraw @s [{text:"  "},{text:"Dash Master",color:"gold",bold:true},{text:" — Sprint 120s nonstop",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 20 run tellraw @s [{text:"  "},{text:"Sharpshooter",color:"gold",bold:true},{text:" — Land 100 ranged hits",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 21 run tellraw @s [{text:"  "},{text:"Combo Artist",color:"gold",bold:true},{text:" — Get a 10x kill combo",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 22 run tellraw @s [{text:"  "},{text:"Shadow Step",color:"gold",bold:true},{text:" — Dodge 100 attacks",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 23 run tellraw @s [{text:"  "},{text:"Ironwall",color:"gold",bold:true},{text:" — No damage for 15 min",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 24 run tellraw @s [{text:"  "},{text:"Silent Hunter",color:"gold",bold:true},{text:" — Kill 50 mobs while sneaking",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 25 run tellraw @s [{text:"  "},{text:"Ghost Walk",color:"gold",bold:true},{text:" — Sneak 10,000 blocks",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 26 run tellraw @s [{text:"  "},{text:"Juggernaut",color:"gold",bold:true},{text:" — Take 500 damage and survive",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 27 run tellraw @s [{text:"  "},{text:"Immortal",color:"gold",bold:true},{text:" — Survive 14 days without dying",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 28 run tellraw @s [{text:"  "},{text:"Completionist",color:"gold",bold:true},{text:" — Complete 50 quests",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 29 run tellraw @s [{text:"  "},{text:"Bounty Hunter",color:"gold",bold:true},{text:" — Complete 10 bounties",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 30 run tellraw @s [{text:"  "},{text:"Pack Leader",color:"gold",bold:true},{text:" — Have 5 pets at level 50+",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 31 run tellraw @s [{text:"  "},{text:"Beast Bond",color:"gold",bold:true},{text:" — Reach Devoted with 3 pets",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 32 run tellraw @s [{text:"  "},{text:"Exterminator",color:"gold",bold:true},{text:" — Kill 1000 mobs",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 33 run tellraw @s [{text:"  "},{text:"Trade Master",color:"gold",bold:true},{text:" — Complete 100 villager trades",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 34 run tellraw @s [{text:"  "},{text:"Deep Sea",color:"gold",bold:true},{text:" — Catch 250 fish",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 35 run tellraw @s [{text:"  "},{text:"Rain Fisher",color:"gold",bold:true},{text:" — Catch 50 fish during rain",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 36 run tellraw @s [{text:"  "},{text:"Core Driller",color:"gold",bold:true},{text:" — Mine 10,000 blocks",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 37 run tellraw @s [{text:"  "},{text:"Gem Hunter",color:"gold",bold:true},{text:" — Mine 1000 ores",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 38 run tellraw @s [{text:"  "},{text:"Harvest Lord",color:"gold",bold:true},{text:" — Harvest 2,500 crops",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 39 run tellraw @s [{text:"  "},{text:"Green Revolution",color:"gold",bold:true},{text:" — Harvest 500 crops in one session",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 40 run tellraw @s [{text:"  "},{text:"Master Smith",color:"gold",bold:true},{text:" — Smelt 1,000 items",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 41 run tellraw @s [{text:"  "},{text:"Furnace King",color:"gold",bold:true},{text:" — Smelt 2,000 items",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 42 run tellraw @s [{text:"  "},{text:"World Walker",color:"gold",bold:true},{text:" — Open 25 structure crates",color:"gray"},{text:" [Weekly]",color:"gold"}]
execute if score @s adv.chal_id matches 43 run tellraw @s [{text:"  "},{text:"Trailblazer",color:"gold",bold:true},{text:" — Open 50 structure crates",color:"gray"},{text:" [Weekly]",color:"gold"}]
