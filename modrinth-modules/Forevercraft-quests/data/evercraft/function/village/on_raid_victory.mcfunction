# ============================================================
# On Raid Victory
# Triggered when player gains Hero of the Village effect
# Grants reputation bonus and celebratory message
# NOTE: Do NOT revoke the advancement here — the player still has the effect,
# so revoking causes an instant re-trigger loop (effects_changed fires again).
# The advancement is revoked by achievements/tick.mcfunction when the effect wears off.
# ============================================================

# ONLY fire for real vanilla raids — requires rp.raiding tag
# rp.raiding is set by luck_buffs/tick when raid_omen is consumed near a village
# This blocks: Reaper peacemonger buff, emerald ring, commands, any non-raid source
execute unless entity @s[tag=rp.raiding] run return 0

# Clear raid flag (raid is over)
tag @s remove rp.raiding

# Grant reputation bonus (+150 per raid victory) — only if in a village
execute if score @s ec.current_village matches 1.. run scoreboard players add @s ec.village_rep 150
execute if score @s ec.current_village matches 1.. run function evercraft:quests/reputation/check_rank
execute if score @s ec.current_village matches 1.. run function evercraft:quests/reputation/save_village_rep

# Reaper renown (+300 for raid victory)
function evercraft:reaper/deeds/on_raid_victory

# Notification
title @s subtitle {text:"Village reputation increased",color:"green"}
title @s title [{text:"◆ ",color:"gold"},{text:"Raid Victory",color:"yellow"},{text:" ◆",color:"gold"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
