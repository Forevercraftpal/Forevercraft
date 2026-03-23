# Home Pet Warp Strike — Hearthstone Glyph Orchestrator
# Runs as: player holding hearthstone-glyphed weapon
# Owned tamed pets nearby warp strike hostiles

# Must have hostiles nearby
execute unless entity @e[type=#evercraft:combat_targets,distance=..16,limit=1] run return 0

# Must have pets nearby
execute unless entity @e[type=#evercraft:home_pets,distance=..16,limit=1] run return 0

# Calculate damage based on player bonuses (Beastmaster, Wild Trim, Beastlord, Moon)
function evercraft:housing/pet_warp/calc_damage

# Tag self for ownership check
tag @s add hs.warp_owner

# Owned wolves/cats/parrots warp strike (verified via owner relationship)
# Skip sitting pets — only standing pets warp strike
execute at @s as @e[type=wolf,distance=..16,nbt=!{Sitting:1b}] run function evercraft:housing/pet_warp/glyph_strike
execute at @s as @e[type=cat,distance=..16,nbt=!{Sitting:1b}] run function evercraft:housing/pet_warp/glyph_strike
execute at @s as @e[type=parrot,distance=..16,nbt=!{Sitting:1b}] run function evercraft:housing/pet_warp/glyph_strike
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed,scores={fox.sitting=0}] run function evercraft:housing/pet_warp/glyph_strike
execute at @s as @e[type=ocelot,distance=..16,tag=ec.ocelot_tamed,scores={ocelot.sitting=0}] run function evercraft:housing/pet_warp/glyph_strike

# Snow golems have no owner — just check proximity (they fight for whoever is nearby)
execute at @s as @e[type=snow_golem,distance=..16] run function evercraft:housing/pet_warp/pet_strike

tag @s remove hs.warp_owner

# Notify
tellraw @s [{text:"  [Hearthstone] ",color:"#FFD700"},{text:"Your pets surge with hearthfire!",color:"yellow",italic:true}]
playsound minecraft:entity.wolf_puglin.ambient player @s ~ ~ ~ 0.4 1.4
