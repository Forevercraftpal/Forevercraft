# Run as wolf — check owner's beastmaster level and apply damage modifier
# Uses `on owner` to read owner score, then applies back to wolf

# Read owner's beastmaster level (switch context to owner, store score)
execute on owner run scoreboard players operation #wolf_bm adv.temp = @s adv.beastmaster

# Skip if owner has no beastmaster
execute if score #wolf_bm adv.temp matches ..0 run return run tag @s add adv.wolf_set

# Remove old modifier
attribute @s attack_damage modifier remove evercraft:adv_wolf_dmg

# Calculate bonus damage: level * 12 / 100 (max +3.0 at level 25)
scoreboard players operation #wolf_dmg adv.temp = #wolf_bm adv.temp
scoreboard players set #12 adv.temp 12
scoreboard players operation #wolf_dmg adv.temp *= #12 adv.temp

# Prestige P1: Alpha Bond — +25% wolf damage
execute on owner if score @s adv.pres_beas matches 1.. run scoreboard players operation #wolf_dmg adv.temp *= #125 adv.temp
execute on owner if score @s adv.pres_beas matches 1.. run scoreboard players operation #wolf_dmg adv.temp /= #100 adv.temp

execute store result storage evercraft:advantage wolf_dmg double 0.01 run scoreboard players get #wolf_dmg adv.temp

# Apply modifier to wolf
function evercraft:advantage/beastmaster/apply_wolf_dmg with storage evercraft:advantage

tag @s add adv.wolf_set
