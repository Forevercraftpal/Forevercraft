# Foraging Bush: Gathering complete — award item
# Run as player, at player position

# Hide boss bar and reset state
bossbar set evercraft:forage_gather visible false
scoreboard players set @s ec.fg_picking 0
scoreboard players set @s ec.fg_progress 0

# Read biome from marker BEFORE despawning (fallback "plains" for pre-update nodes)
data modify storage evercraft:fg_temp node_biome set value "plains"
execute as @e[type=marker,tag=ec.forage_data,distance=..8,limit=1,sort=nearest] run data modify storage evercraft:fg_temp node_biome set from entity @s data.biome

# Despawn the bush (nearest marker within 8 blocks)
execute as @e[type=marker,tag=ec.forage_data,distance=..8,limit=1,sort=nearest] at @s run function evercraft:forage/despawn_bush

# Roll loot and give to player (biome-routed)
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run function evercraft:forage/give_biome_loot with storage evercraft:fg_temp
execute if score #inv_full ec.var matches 1 at @s run function evercraft:forage/spawn_biome_loot with storage evercraft:fg_temp

# Warn if inventory full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Hearty Harvest (P1): 10% chance for bonus ingredients
execute if score @s adv.pa_culi1 matches 1 store result score #hh_roll ec.temp run random value 1..10
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 0 run function evercraft:forage/give_biome_loot with storage evercraft:fg_temp
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run function evercraft:forage/spawn_biome_loot with storage evercraft:fg_temp
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 run tellraw @s [{text:"[Hearty Harvest] ",color:"green"},{text:"Bonus ingredients!",color:"yellow"}]

# Fortune bonus: held tool with fortune gives chance for bonus rare drop
# Fortune 1: 2%, Fortune 2: 4%, Fortune 3: 6%, Fortune 4: 8%, Fortune 5: 10%
scoreboard players set #ft_thresh ec.temp 0
execute if predicate evercraft:harvest/enchantments/fortune_1 run scoreboard players set #ft_thresh ec.temp 2
execute if predicate evercraft:harvest/enchantments/fortune_2 run scoreboard players set #ft_thresh ec.temp 4
execute if predicate evercraft:harvest/enchantments/fortune_3 run scoreboard players set #ft_thresh ec.temp 6
execute if predicate evercraft:harvest/enchantments/fortune_4 run scoreboard players set #ft_thresh ec.temp 8
execute if predicate evercraft:harvest/enchantments/fortune_5 run scoreboard players set #ft_thresh ec.temp 10
scoreboard players set #ft_hit ec.temp 0
execute if score #ft_thresh ec.temp matches 1.. store result score #ft_roll ec.temp run random value 1..100
execute if score #ft_thresh ec.temp matches 1.. if score #ft_roll ec.temp <= #ft_thresh ec.temp run scoreboard players set #ft_hit ec.temp 1
execute if score #ft_hit ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:forage/fortune_drops
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:forage/fortune_drops
execute if score #ft_hit ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your keen eye found a rare bonus!",color:"light_purple"}]

# +4 Harvest tree progress
scoreboard players add @s adv.stat_harvest 4

# 1/100 chance for a bonus crate
execute store result score #fg_crate ec.temp run random value 1..100
execute if score #fg_crate ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:cooking/bonus_crate
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:cooking/bonus_crate
execute if score #fg_crate ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A crate tumbled out of the bush!",color:"yellow"}]
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
# Guild Diplomacy Event: Harvest Crate scoring (activity 10)
execute if score #fg_crate ec.temp matches 1 if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 10 if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1

# Prospect + Advantage: Gathering level 10+ grants bonus Gathering XP
execute if score @s adv.gathering matches 10.. run scoreboard players add @s adv.stat_harvest 2
execute if score @s adv.gathering matches 10.. run tellraw @s [{text:"  [Gathering] ",color:"dark_green"},{text:"+2 bonus progress",color:"green"}]

# World Events + Forage: Active world event grants guaranteed double drop
execute if score #we_active ec.var matches 1 run function evercraft:forage/give_biome_loot with storage evercraft:fg_temp
execute if score #we_active ec.var matches 1 run tellraw @s [{text:"  [World Event] ",color:"gold"},{text:"Double forage yield!",color:"yellow"}]

# Harmonic Convergence + Forage: Additional bonus drop during convergence
execute if score #conv_flag ec.var matches 1 run function evercraft:forage/give_biome_loot with storage evercraft:fg_temp
execute if score #conv_flag ec.var matches 1 run tellraw @s [{text:"  [Convergence] ",color:"light_purple"},{text:"The convergence amplifies your harvest!",color:"#DD99FF"}]

# Forage + Potions: 3% chance to find a potion ingredient while foraging
execute store result score #fp_roll ec.temp run random value 1..100
execute if score #fp_roll ec.temp matches 1..3 run function evercraft:forage/bonus_potion_ingredient
execute if score #fp_roll ec.temp matches 1..3 run tellraw @s [{text:"  [Foraging] ",color:"green"},{text:"You found a potion ingredient among the herbs!",color:"light_purple"}]

# Forage + Companions: Active companion with Beastmaster 5+ grants 15% extra drop chance
execute if score @s adv.beastmaster matches 5.. if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,distance=..32,limit=1] store result score #fc_roll ec.temp run random value 1..100
execute if score @s adv.beastmaster matches 5.. if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,distance=..32,limit=1] if score #fc_roll ec.temp matches 1..15 run function evercraft:forage/give_biome_loot with storage evercraft:fg_temp
execute if score @s adv.beastmaster matches 5.. if entity @e[type=item_display,tag=Companion,predicate=evercraft:companions/check_id,distance=..32,limit=1] if score #fc_roll ec.temp matches 1..15 run tellraw @s [{text:"  [Companion] ",color:"light_purple"},{text:"Your pet sniffed out extra herbs!",color:"yellow"}]

# Biome Mastery: Jungle mastery grants +25% extra forage drop
execute if entity @s[tag=ec.bm_forage_bonus] store result score #bmf_roll ec.temp run random value 1..4
execute if entity @s[tag=ec.bm_forage_bonus] if score #bmf_roll ec.temp matches 1 run function evercraft:forage/give_biome_loot with storage evercraft:fg_temp
execute if entity @s[tag=ec.bm_forage_bonus] if score #bmf_roll ec.temp matches 1 run tellraw @s [{text:"  [Biome Mastery] ",color:"gold"},{text:"Jungle mastery bonus herbs!",color:"green"}]

# Artisan XP: Foraging (+3 per gathering)
scoreboard players set #cf_xp_amount ec.cf_temp 3
scoreboard players set #cf_xp_cat ec.cf_temp 4
function evercraft:craftforever/artisan/add_xp

# Track for achievements
scoreboard players add @s ach.forages_done 1

# Completion effects
playsound minecraft:block.sweet_berry_bush.pick_berries master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 15

# --- Forever Coin chance: 3% per bush gathered ---
execute store success score #fg_coin_roll ec.temp if predicate {"condition":"minecraft:random_chance","chance":0.03}
execute if score #fg_coin_roll ec.temp matches 1 run scoreboard players add @s ec.coins 1
execute if score #fg_coin_roll ec.temp matches 1 run scoreboard players add #rm_coins ec.var 1
execute if score #fg_coin_roll ec.temp matches 1 run tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+1 Forever Coin",color:"#E0B0FF"},{text:" — there's something shiny under the bush...",color:"gray",italic:true}]
execute if score #fg_coin_roll ec.temp matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.3 1.5

# Guild Diplomacy Event: Gather Nodes scoring (activity 6)
execute if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 6 if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1

# Guild Expedition: Foraging bonus drops (activity=3)
function evercraft:guild/expedition/bonus_forage
