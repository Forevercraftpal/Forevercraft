# Spawn all 11 custom professions for testing
# Uses: /function evercraft:professions/test/spawn_all
# Each villager uses change_to_profession for proper tags, names, and trades

tellraw @s [{text:"[Test] ",color:"gold"},{text:"Spawning all 11 professions...",color:"gray"}]

# Row 1: Left to right
summon minecraft:villager ~0 ~ ~2 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/zookeeper/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~2 ~ ~2 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/artificer/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~4 ~ ~2 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/hunter/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~6 ~ ~2 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/explorer/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~8 ~ ~2 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/miner/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~10 ~ ~2 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/bartender/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

# Row 2
summon minecraft:villager ~0 ~ ~4 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/retired_adventurer/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~2 ~ ~4 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/wise_wanderer/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~4 ~ ~4 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/nymph/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~6 ~ ~4 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/circut_board/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

summon minecraft:villager ~8 ~ ~4 {VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains",level:99},Invulnerable:1b,Tags:["test_prof","test_setup"]}
execute as @e[type=minecraft:villager,tag=test_setup,limit=1,sort=nearest] run function evercraft:professions/jobs/beekeeper/change_to_profession
tag @e[type=minecraft:villager,tag=test_setup] remove test_setup

# Remove all test tags
tag @e[type=villager,tag=test_prof] remove test_prof

tellraw @s [{text:"[Test] ",color:"gold"},{text:"All 11 professions spawned!",color:"green"}]
