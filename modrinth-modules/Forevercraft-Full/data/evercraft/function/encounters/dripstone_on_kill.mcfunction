# Underground Biome Encounters — Dripstone: Tremor Mob Killed
# Advancement reward — spawn silverfish when killing a cave spider from the encounter

# Revoke for re-triggering
advancement revoke @s only evercraft:encounters/tremor_kill

# Only spawn silverfish if dripstone encounter is active
execute unless score @s ube.type matches 2 run return 0
execute unless score @s ube.timer matches 1.. run return 0

# Spawn 2 silverfish at the player's location
summon silverfish ~ ~ ~1 {PersistenceRequired:1b,Tags:["ube.tremor_fish"]}
summon silverfish ~ ~ ~-1 {PersistenceRequired:1b,Tags:["ube.tremor_fish"]}

# Feedback
playsound minecraft:block.stone.break player @s ~ ~ ~ 0.8 1.5
particle block{block_state:{Name:"minecraft:dripstone_block"}} ~ ~0.5 ~ 0.5 0.3 0.5 0.1 10
