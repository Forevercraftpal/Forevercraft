# Count unclaimed OLD realm milestones (ms_1 through ms_34)
# Sets ec.claim_rm = number of unclaimed realm milestone rewards
# These are what bulk_claim_personal (trigger 1) actually claims
scoreboard players set @s ec.claim_rm 0

# Origins (1, 3, 5-12)
execute if score #rm_done_1 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_1=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_3 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_3=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_5 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_5=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_6 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_6=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_7 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_7=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_8 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_8=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_9 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_9=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_10 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_10=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_11 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_11=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_12 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_12=true}] run scoreboard players add @s ec.claim_rm 1

# Social (13-17)
execute if score #rm_done_13 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_13=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_14 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_14=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_15 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_15=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_16 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_16=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_17 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_17=true}] run scoreboard players add @s ec.claim_rm 1

# Guild (18-22)
execute if score #rm_done_18 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_18=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_19 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_19=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_20 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_20=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_21 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_21=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_22 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_22=true}] run scoreboard players add @s ec.claim_rm 1

# Adventure (23-26)
execute if score #rm_done_23 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_23=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_24 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_24=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_25 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_25=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_26 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_26=true}] run scoreboard players add @s ec.claim_rm 1

# Combat (27-30)
execute if score #rm_done_27 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_27=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_28 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_28=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_29 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_29=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_30 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_30=true}] run scoreboard players add @s ec.claim_rm 1

# Mastery (31-34)
execute if score #rm_done_31 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_31=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_32 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_32=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_33 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_33=true}] run scoreboard players add @s ec.claim_rm 1
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run scoreboard players add @s ec.claim_rm 1
