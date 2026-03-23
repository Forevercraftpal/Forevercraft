# Dreaming Realm — Check Persistent Rewards (called during wake_up)
# Grants one-time achievements that persist across visits
# Context: as @s = player waking from dream

# "Dreamwalker" title — first visit to the Dreaming Realm (crate title ID 1)
execute unless entity @s[tag=dr.dreamwalker] run tag @s add dr.dreamwalker
execute unless entity @s[tag=dr.dreamwalker_announced] run function evercraft:dreaming_realm/rewards/unlock_dreamwalker_title
execute unless entity @s[tag=dr.dreamwalker_announced] run advancement grant @s only evercraft:dreaming_realm/dreamwalker
execute unless entity @s[tag=dr.dreamwalker_announced] run tellraw @s [{"text":""},{"text":"  "},{"text":"Title Unlocked: ","color":"gray"},{"text":"Dreamwalker","color":"#9B59B6","bold":true}]
execute unless entity @s[tag=dr.dreamwalker_announced] run tag @s add dr.dreamwalker_announced

# Check if player completed all 3 challenges + all 5 lore this visit
execute if score @s ec.dream_ch1 matches 1 if score @s ec.dream_ch2 matches 1 if score @s ec.dream_ch3 matches 1 if score @s ec.dream_lore matches 5.. unless entity @s[tag=dr.master_dreamer] run function evercraft:dreaming_realm/rewards/give_cloak
