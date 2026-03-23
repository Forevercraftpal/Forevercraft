# Personal Milestones — Spawn Current Page
# Routes to page_1..page_13 based on ec.pm_page score
# Note: do NOT use "at @s" here — it resets rotation to player's natural yaw,
# discarding the facing-anchor context set by the caller
# Note: ec.claim_shw is set to -1 ONLY on first entry (personal_claims.mcfunction)
# Do NOT reset here — prevents tellraw spam on page flips
execute if score @s ec.pm_page matches 0 run function evercraft:ecodex/sections/personal_claims/page_1
execute if score @s ec.pm_page matches 1 run function evercraft:ecodex/sections/personal_claims/page_2
execute if score @s ec.pm_page matches 2 run function evercraft:ecodex/sections/personal_claims/page_3
execute if score @s ec.pm_page matches 3 run function evercraft:ecodex/sections/personal_claims/page_4
execute if score @s ec.pm_page matches 4 run function evercraft:ecodex/sections/personal_claims/page_5
execute if score @s ec.pm_page matches 5 run function evercraft:ecodex/sections/personal_claims/page_6
execute if score @s ec.pm_page matches 6 run function evercraft:ecodex/sections/personal_claims/page_7
execute if score @s ec.pm_page matches 7 run function evercraft:ecodex/sections/personal_claims/page_8
execute if score @s ec.pm_page matches 8 run function evercraft:ecodex/sections/personal_claims/page_9
execute if score @s ec.pm_page matches 9 run function evercraft:ecodex/sections/personal_claims/page_10
execute if score @s ec.pm_page matches 10 run function evercraft:ecodex/sections/personal_claims/page_11
execute if score @s ec.pm_page matches 11 run function evercraft:ecodex/sections/personal_claims/page_12
execute if score @s ec.pm_page matches 12 run function evercraft:ecodex/sections/personal_claims/page_13
