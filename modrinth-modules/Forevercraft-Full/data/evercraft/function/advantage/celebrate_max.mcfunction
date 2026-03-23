# Advantage Tree Mastered — Server-wide firework celebration
# Macro arg: tree_id (1-14)
# Run as player, at player position

# Get tree name for announcement
execute if score #tree_id adv.temp matches 1 run data modify storage evercraft:advantage temp.tree_name set value "Agility"
execute if score #tree_id adv.temp matches 2 run data modify storage evercraft:advantage temp.tree_name set value "Dexterity"
execute if score #tree_id adv.temp matches 3 run data modify storage evercraft:advantage temp.tree_name set value "Evasion"
execute if score #tree_id adv.temp matches 4 run data modify storage evercraft:advantage temp.tree_name set value "Stealth"
execute if score #tree_id adv.temp matches 5 run data modify storage evercraft:advantage temp.tree_name set value "Vitality"
execute if score #tree_id adv.temp matches 6 run data modify storage evercraft:advantage temp.tree_name set value "Taskmaster"
execute if score #tree_id adv.temp matches 7 run data modify storage evercraft:advantage temp.tree_name set value "Beastmaster"
execute if score #tree_id adv.temp matches 8 run data modify storage evercraft:advantage temp.tree_name set value "Victorian"
execute if score #tree_id adv.temp matches 9 run data modify storage evercraft:advantage temp.tree_name set value "Fishing"
execute if score #tree_id adv.temp matches 10 run data modify storage evercraft:advantage temp.tree_name set value "Mining"
execute if score #tree_id adv.temp matches 11 run data modify storage evercraft:advantage temp.tree_name set value "Gathering"
execute if score #tree_id adv.temp matches 12 run data modify storage evercraft:advantage temp.tree_name set value "Blacksmith"
execute if score #tree_id adv.temp matches 13 run data modify storage evercraft:advantage temp.tree_name set value "Explorer"
execute if score #tree_id adv.temp matches 14 run data modify storage evercraft:advantage temp.tree_name set value "Culinary"

# Server-wide announcement
function evercraft:advantage/celebrate_max_announce with storage evercraft:advantage temp

# Fireworks at player position (5 rockets with varying effects)
summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworkItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"large_ball",colors:[16766720,16733440],has_trail:true}]}}}}
summon firework_rocket ~1 ~1 ~1 {LifeTime:5,FireworkItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"star",colors:[16766720,255],has_trail:true,has_twinkle:true}]}}}}
summon firework_rocket ~-1 ~1 ~1 {LifeTime:10,FireworkItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1,explosions:[{shape:"burst",colors:[16766720,65280],has_trail:true}]}}}}
summon firework_rocket ~1 ~1 ~-1 {LifeTime:15,FireworkItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"large_ball",colors:[16766720,16711935],has_trail:true,has_twinkle:true}]}}}}
summon firework_rocket ~-1 ~1 ~-1 {LifeTime:20,FireworkItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[16766720,65535,16711680],has_trail:true,has_twinkle:true}]}}}}

# Sound for all players
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
