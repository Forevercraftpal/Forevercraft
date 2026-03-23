# Level Up — Vitality
# +1 max health per level

# Max level check
execute if score @s adv.vitality matches 25.. run return run tellraw @s {text:"Vitality is already at max level!",color:"red"}

# Calculate requirements
function evercraft:advantage/calc/vitality

# Read current vanilla XP level
execute store result score @s adv.xp_levels run experience query @s levels

# Check XP
execute unless score @s adv.xp_levels >= @s adv.req_xp run return run tellraw @s [{text:"Need ",color:"red"},{score:{name:"@s",objective:"adv.req_xp"},color:"gold"},{text:" XP levels to upgrade Vitality. You have ",color:"red"},{score:{name:"@s",objective:"adv.xp_levels"},color:"gold"},{text:" levels.",color:"red"}]

# Check stat
execute unless score @s adv.stat_food >= @s adv.req_stat run return run tellraw @s [{text:"Need ",color:"red"},{score:{name:"@s",objective:"adv.req_stat"},color:"gold"},{text:" fruits/veggies eaten to upgrade Vitality. You have eaten ",color:"red"},{score:{name:"@s",objective:"adv.stat_food"},color:"gold"},{text:".",color:"red"}]

# Deduct XP levels via macro
execute store result storage evercraft:advantage xp_cost int 1 run scoreboard players get @s adv.req_xp
function evercraft:advantage/deduct_xp with storage evercraft:advantage

# Increment level
scoreboard players add @s adv.vitality 1

# Milestone check (tokens + cosmetics)
scoreboard players operation #milestone_check adv.temp = @s adv.vitality
function evercraft:advantage/tokens/check_milestone
function evercraft:advantage/cosmetics/check_milestones

# Apply effect
function evercraft:advantage/effects/vitality

# Success
tellraw @s [{text:"✦ ",color:"gold"},{text:"Vitality leveled up to ",color:"red"},{score:{name:"@s",objective:"adv.vitality"},color:"gold",bold:true},{text:"!",color:"red"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2

# Max level celebration
execute if score @s adv.vitality matches 25 run function evercraft:advantage/levelup/max_celebration {tree_name:"Vitality"}

# Achievement tracking
scoreboard players add @s ach.total_levels 1
execute if score @s ach.total_levels matches 50 unless score @s ec.tome_count matches 1.. run loot give @s loot evercraft:items/tome_of_lucid_visions
execute if score @s ach.total_levels matches 50 unless score @s ec.tome_count matches 1.. run tellraw @s [{text:"  ✦ ",color:"dark_aqua"},{text:"Tome of Lucid Visions",color:"dark_aqua",bold:true},{text:" received! (+1 Dream Rate)",color:"yellow"}]
