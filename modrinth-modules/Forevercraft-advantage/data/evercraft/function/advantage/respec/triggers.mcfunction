# Respec Triggers — Route /trigger adv.respec (1-14)
scoreboard players operation #respec_tree adv.temp = @s adv.respec

# Validate
execute unless score #respec_tree adv.temp matches 1..14 run return run tellraw @s [{text:"Invalid tree ID. Use ",color:"red"},{text:"/trigger adv.respec set 1-14",color:"aqua"}]

# Check cooldown
function evercraft:advantage/respec/check_cooldown
execute if score #respec_ok adv.temp matches 0 run return 0

# Check cost (Seed of Forgetting)
function evercraft:advantage/respec/check_cost
execute if score #respec_ok adv.temp matches 0 run return 0

# Execute respec
function evercraft:advantage/respec/do_respec
