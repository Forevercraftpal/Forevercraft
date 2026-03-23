# Guild Diplomacy — Queued vote resolution
# 60% of roster has voted — majority of cast votes decides

execute if score #gd_cv_yes ec.temp > #gd_cv_no ec.temp run function evercraft:guild/diplomacy/propose/guild_approved
execute if score #gd_cv_no ec.temp >= #gd_cv_yes ec.temp run function evercraft:guild/diplomacy/propose/guild_rejected
