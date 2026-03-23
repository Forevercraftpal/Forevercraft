# The Ashen Lord — Check Fire Anchors
# Fire anchors are interaction entities with health tracked via response clicks
# Players attack anchors by right-clicking (interaction entity)
# Each anchor has ~5 "charges" before being destroyed

# Check each anchor for interaction (player clicked it = attack)
execute as @e[tag=ec.rd_al_anchor] at @s if data entity @s interaction run function evercraft:raids/boss/ashen_lord/abilities/anchor_hit
