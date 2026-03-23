# Double Jump Tick - Runs every 2 ticks for responsive double jump
# Cloudstep Boots (Nimble Turtle Boots) ability

# Decrease cooldown for players that have one (already gated by score)
execute as @a if score @s ec.double_jump_cd matches 1.. run scoreboard players remove @s ec.double_jump_cd 1

# Only process players actually wearing double jump boots (OPT Session 76)
# Reset cooldown when on ground (can double jump again)
execute as @a if items entity @s armor.feet *[custom_data~{ability:"double_jump"}] if predicate evercraft:on_ground run scoreboard players set @s ec.double_jump_cd 0

# Trigger double jump: has boots + sneaking + not on ground + no cooldown
execute as @a[scores={ec.double_jump_cd=0}] if items entity @s armor.feet *[custom_data~{ability:"double_jump"}] if predicate evercraft:is_sneaking if predicate evercraft:not_on_ground at @s run function evercraft:artifacts/abilities/double_jump

schedule function evercraft:artifacts/abilities/double_jump_tick 2t
