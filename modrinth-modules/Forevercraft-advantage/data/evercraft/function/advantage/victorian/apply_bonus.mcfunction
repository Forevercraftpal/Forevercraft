# Victorian — Apply bonus XP from crates/patrons
# Caller must set #base_crate_xp adv.temp before calling
# Run as the player receiving the reward

# Calculate bonus percentage: level * 4
scoreboard players operation #bonus_pct adv.temp = @s adv.victorian
scoreboard players operation #bonus_pct adv.temp *= #4 adv.temp

# Prestige P2: Bloodthirst — flat +50% on top of level bonus
execute if score @s adv.pa_vict2 matches 1 run scoreboard players add #bonus_pct adv.temp 50

# XP bonus: base_xp * bonus_pct / 100
scoreboard players operation #xp_bonus adv.temp = #base_crate_xp adv.temp
scoreboard players operation #xp_bonus adv.temp *= #bonus_pct adv.temp
scoreboard players operation #xp_bonus adv.temp /= #100 adv.temp

# Grant bonus XP via macro
execute store result storage evercraft:advantage bonus_xp int 1 run scoreboard players get #xp_bonus adv.temp
function evercraft:advantage/victorian/grant_xp with storage evercraft:advantage

# Prestige P3: Spoils of War — crate spawn rate boost is handled in mob_crates/drop/patron_*.mcfunction
