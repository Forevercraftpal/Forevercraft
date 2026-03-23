# Claim Engine — Universal Reward Claim (macro)
# Args: {system:"personal", id:"p1_1", tier:"uncommon", coins:5}
# Run as: the player claiming

# Guard: not already claimed
$execute if entity @s[advancements={evercraft:claim/$(system)/$(id)=true}] run return 0

# Grant claim advancement (dedup)
$advancement grant @s only evercraft:claim/$(system)/$(id)

# Give crate
$function evercraft:util/give_quest_crate {tier:"$(tier)"}

# Give coins
$scoreboard players add @s ec.coins $(coins)

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.0 0.6
particle minecraft:happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 0.02 15
$tellraw @s [{text:"[!] ",color:"gold"},{text:"Milestone reward claimed! ",color:"green"},{text:"+$(coins) Coins",color:"#E0B0FF"}]

# Increment lifetime claims and check for auto-collect prompt
scoreboard players add @s ec.total_claims 1
execute if score @s ec.total_claims matches 10 if score @s ec.auto_clm matches 0 run function evercraft:claim/auto_claim_prompt
