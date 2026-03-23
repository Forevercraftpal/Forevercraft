# === ETERNAL CODEX — PERSONAL MILESTONES (Section 17) ===
# 100 milestones across 5 paginated pages
# Pages 1-3: 60 staged milestones (5 stages each)
# Pages 4-5: 40 one-time milestones (1 stage each)
# Run as: player, at player

# Reset to page 1 on section entry
scoreboard players set @s ec.pm_page 0
# Reset claim display tracker (triggers pending count tellraw on first page only)
scoreboard players set @s ec.claim_shw -1

# Title click interaction (claim all personal stages)
execute rotated ~ 0 positioned ^ ^2.96 ^2.32 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Ec.PmTitleClick"],width:0.6f,height:0.08f,response:1b}

# Spawn the first page
function evercraft:ecodex/sections/personal_claims/spawn_page
