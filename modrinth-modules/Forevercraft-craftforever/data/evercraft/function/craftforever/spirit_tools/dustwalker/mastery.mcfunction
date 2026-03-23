# Dustwalker Mastery — "Terraform" (60s CD)
# Flatten 15x15 area to player's Y level

scoreboard players set @s ec.st_cd 1200

title @s actionbar [{"text":"Terraform","color":"#C2B280","bold":true}]
playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 0.3 0.5
playsound minecraft:block.rooted_dirt.break master @s ~ ~ ~ 1 0.6

# Clear everything above (5 layers)
fill ~-7 ~1 ~-7 ~7 ~5 ~7 air replace #minecraft:flowers
fill ~-7 ~1 ~-7 ~7 ~5 ~7 air replace short_grass
fill ~-7 ~1 ~-7 ~7 ~5 ~7 air replace tall_grass
fill ~-7 ~1 ~-7 ~7 ~5 ~7 air replace #minecraft:saplings
fill ~-7 ~1 ~-7 ~7 ~5 ~7 air replace #minecraft:leaves

# Fill gaps below with dirt (3 layers down)
fill ~-7 ~-3 ~-7 ~7 ~-1 ~7 dirt replace air
fill ~-7 ~-3 ~-7 ~7 ~-1 ~7 dirt replace cave_air
fill ~-7 ~-3 ~-7 ~7 ~-1 ~7 dirt replace water

# Top layer → grass_block
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block replace dirt
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block replace stone
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block replace gravel
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block replace sand
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block replace cobblestone

# VFX
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 7 1 7 0.01 30
particle minecraft:dust{color:[0.5,0.8,0.3],scale:1.5} ~ ~0.5 ~ 5 0.5 5 0.01 40

# Grant crafting affinity XP: 100 for mastery use
function evercraft:craft_affinity/grant {class_id:4, delta:100}
