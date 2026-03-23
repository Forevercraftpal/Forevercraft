# === CHECK FOR NEW CLAIMABLE REWARDS ===
# Run as: each player
# Compares current unclaimed total to previous, notifies if increased

# Save previous total
scoreboard players operation #prev_total ec.temp = @s ec.prev_claims

# Recount all systems
scoreboard players set @s ec.claim_bst 0
scoreboard players set @s ec.claim_aff 0
scoreboard players set @s ec.claim_prs 0
scoreboard players set @s ec.claim_cft 0
scoreboard players set @s ec.claim_lore 0
scoreboard players set @s ec.claim_biome 0

function evercraft:claim/count_bestiary
function evercraft:claim/count_affinity
function evercraft:claim/count_personal
function evercraft:claim/count_craftforever
function evercraft:claim/count_lore
function evercraft:claim/count_biome

# Sum current total
scoreboard players set #curr_total ec.temp 0
scoreboard players operation #curr_total ec.temp += @s ec.claim_bst
scoreboard players operation #curr_total ec.temp += @s ec.claim_aff
scoreboard players operation #curr_total ec.temp += @s ec.claim_prs
scoreboard players operation #curr_total ec.temp += @s ec.claim_cft
scoreboard players operation #curr_total ec.temp += @s ec.claim_lore
scoreboard players operation #curr_total ec.temp += @s ec.claim_biome

# Notify if total increased (new rewards available)
execute if score #curr_total ec.temp > #prev_total ec.temp run tellraw @s ["",{"text":"\u2726 ","color":"yellow"},{"text":"New rewards available! Open your ","color":"gray"},{"text":"Eternal Codex","color":"gold","bold":true},{"text":" to claim them. ","color":"gray"},{"text":"\u2726","color":"yellow"}]
execute if score #curr_total ec.temp > #prev_total ec.temp run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.2

# Save current as previous
scoreboard players operation @s ec.prev_claims = #curr_total ec.temp
