# Dreaming Realm — All 3 Challenges Complete!
# Context: as @s = dreaming player
# Called from the final challenge's on_complete when all 3 are done

# Grand celebration
tellraw @s [{"text":"\n"},{"text":""},{"text":"✦ ","color":"gold"},{"text":"ALL CHALLENGES COMPLETE","color":"#FFD700","bold":true},{"text":" ✦","color":"gold"},{"text":"\n"},{"text":"  "},{"text":"You have mastered the Dreaming Realm!","color":"#2ECC71","italic":true}]
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.2
playsound entity.player.levelup master @s ~ ~ ~ 1.0 0.8
particle totem_of_undying ~ ~1 ~ 1.0 1.0 1.0 0.5 60 normal @s

# Grant "Lucid Dreamer" achievement (all 3 challenges in one visit)
execute unless entity @s[tag=dr.lucid_dreamer] run tag @s add dr.lucid_dreamer
execute unless entity @s[tag=dr.lucid_dreamer_announced] run advancement grant @s only evercraft:dreaming_realm/lucid_dreamer
execute unless entity @s[tag=dr.lucid_dreamer_announced] run tag @s add dr.lucid_dreamer_announced

# Grant "Ethereal Aura" cosmetic particle (ID 19 in crate system)
function evercraft:dreaming_realm/rewards/unlock_ethereal_aura
tellraw @s [{"text":""},{"text":"  "},{"text":"New Cosmetic: ","color":"gray"},{"text":"Ethereal Aura","color":"#E8A0F0","bold":true},{"text":" unlocked!","color":"gray"}]

# Direct player to explore the Lore Chamber and Reward Shrine
tellraw @s [{"text":""},{"text":"  ","color":"gray"},{"text":"Explore the Lore Chamber to the southwest...","color":"#D4A574","italic":true}]
tellraw @s [{"text":""},{"text":"  ","color":"gray"},{"text":"The Reward Shrine to the south holds your prizes.","color":"#D4A574","italic":true}]

# Check for Master Dreamer (all challenges + all lore)
execute if entity @s[tag=dr.all_lore] unless entity @s[tag=dr.master_dreamer] run function evercraft:dreaming_realm/rewards/give_cloak

# Realm milestone: dream completed
function evercraft:milestones/increment/dream_complete
