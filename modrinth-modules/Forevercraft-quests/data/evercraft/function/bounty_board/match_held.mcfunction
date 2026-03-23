# ============================================================
# Artifact Bounty Board — Match Held Item (Macro)
# Sets #abb_matched ec.abb_temp to 1 if held item matches
# ============================================================
$execute if items entity @s weapon.mainhand *[custom_data~{artifact:"$(id)"}] run scoreboard players set #abb_matched ec.abb_temp 1
