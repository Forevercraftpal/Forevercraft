# Grand Forge — Calculate resonance from ALL passive systems
# Each system contributes points that reduce phase targets and boost Phase 5
# Max resonance ~25 for a fully decked-out player

scoreboard players set @s ec.gf_reson 0

# === ADVANTAGE TREES ===
# +1 per 10 total advantage levels (max ~5)
execute store result score #gf_tmp ec.var run scoreboard players get @s ach.total_levels
scoreboard players operation #gf_tmp ec.var /= #10 adv.temp
scoreboard players operation @s ec.gf_reson += #gf_tmp ec.var

# === ARTISAN RANK ===
# +1 per 5 artisan ranks (max ~5)
execute store result score #gf_tmp ec.var run scoreboard players get @s ec.cf_rank
scoreboard players operation #gf_tmp ec.var /= #4 adv.temp
scoreboard players operation @s ec.gf_reson += #gf_tmp ec.var

# === SPIRIT WEAPON ===
# +2 if holding a spirit weapon
execute if entity @s[tag=ec.sp_active] run scoreboard players add @s ec.gf_reson 2

# === SPIRIT TOOL TIER ===
# +1 per tier above common (max +6)
execute if score @s ec.st_tier matches 2.. store result score #gf_tmp ec.var run scoreboard players get @s ec.st_tier
execute if score @s ec.st_tier matches 2.. run scoreboard players remove #gf_tmp ec.var 1
execute if score @s ec.st_tier matches 2.. run scoreboard players operation @s ec.gf_reson += #gf_tmp ec.var

# === COMPANION ===
# +1 if active companion
execute if score @s ec.comp_active matches 1.. run scoreboard players add @s ec.gf_reson 1

# === GUILD RANK ===
# +1 per 2 guild ranks (max ~3)
execute if score @s ec.guild_rank matches 2.. run scoreboard players add @s ec.gf_reson 1
execute if score @s ec.guild_rank matches 4.. run scoreboard players add @s ec.gf_reson 1
execute if score @s ec.guild_rank matches 6.. run scoreboard players add @s ec.gf_reson 1

# === ARTIFACT SETS ===
# +1 if wearing a 4pc mythical set
execute if score @s ec.set_4pc matches 1.. run scoreboard players add @s ec.gf_reson 1

# === COOKING (Well-Fed) ===
# +1 if well-fed buff active
execute if score @s ec.wf_timer matches 1.. run scoreboard players add @s ec.gf_reson 1

# === ARTISAN TOME PROGRESS ===
# +1 per 25 tome quests completed (max +4)
execute if score @s ec.tq_part matches 25.. run scoreboard players add @s ec.gf_reson 1
execute if score @s ec.tq_part matches 50.. run scoreboard players add @s ec.gf_reson 1
execute if score @s ec.tq_part matches 75.. run scoreboard players add @s ec.gf_reson 1
execute if score @s ec.tq_part matches 100.. run scoreboard players add @s ec.gf_reson 1

# === DREAM RATE (Luck) ===
# +1 if dream rate is boosted
execute if score @s ec.dream_rate matches 2.. run scoreboard players add @s ec.gf_reson 1

# Cap resonance at 25
execute if score @s ec.gf_reson matches 26.. run scoreboard players set @s ec.gf_reson 25
