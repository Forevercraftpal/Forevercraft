# === COUNT UNCLAIMED REWARDS ===
# Run as player (on codex open)
# Sets ec.claim_any = 1 if any rewards available

scoreboard players set @s ec.claim_bst 0
scoreboard players set @s ec.claim_aff 0
scoreboard players set @s ec.claim_prs 0
scoreboard players set @s ec.claim_rm 0
scoreboard players set @s ec.claim_cft 0
scoreboard players set @s ec.claim_lore 0
scoreboard players set @s ec.claim_biome 0
scoreboard players set @s ec.claim_any 0

# Bestiary: count unclaimed bestiary stage rewards
function evercraft:claim/count_bestiary

# Affinity: count unclaimed class affinity stage rewards
function evercraft:claim/count_affinity

# Realm milestones: count unclaimed OLD realm milestone rewards (Travel Journal)
function evercraft:claim/count_realm

# Personal milestones: count unclaimed NEW personal milestone stages (Ecodex)
function evercraft:claim/count_personal

# Craftforever milestones: count unclaimed crafter milestone rewards
function evercraft:claim/count_craftforever

# Lore: count unclaimed completed lore set rewards
function evercraft:claim/count_lore

# Biome: count unclaimed biome mastery stage rewards
function evercraft:claim/count_biome

# Set aggregate flag
execute if score @s ec.claim_bst matches 1.. run scoreboard players set @s ec.claim_any 1
execute if score @s ec.claim_aff matches 1.. run scoreboard players set @s ec.claim_any 1
execute if score @s ec.claim_prs matches 1.. run scoreboard players set @s ec.claim_any 1
execute if score @s ec.claim_rm matches 1.. run scoreboard players set @s ec.claim_any 1
execute if score @s ec.claim_cft matches 1.. run scoreboard players set @s ec.claim_any 1
execute if score @s ec.claim_lore matches 1.. run scoreboard players set @s ec.claim_any 1
execute if score @s ec.claim_biome matches 1.. run scoreboard players set @s ec.claim_any 1
