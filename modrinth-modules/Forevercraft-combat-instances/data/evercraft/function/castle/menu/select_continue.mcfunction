# Infinite Castle — Select Continue from Record Floor
# Run as: interaction entity. Player has IC.InMenu tag.

# Set starting floor to record and calculate key cost
execute as @a[tag=IC.InMenu,limit=1] run scoreboard players operation #ic_start_floor ec.var = @s ic.record
scoreboard players set #ic_key_cost ec.var 3
execute as @a[tag=IC.InMenu,limit=1] run scoreboard players operation #ic_continue_gates ec.var = @s ic.record
scoreboard players operation #ic_continue_gates ec.var /= #10 ec.const
scoreboard players operation #ic_key_cost ec.var += #ic_continue_gates ec.var

# Close menu and begin (as the player)
execute as @a[tag=IC.InMenu,limit=1] at @s run function evercraft:castle/menu/close
execute as @a[tag=ic.starter,limit=1] at @s run function evercraft:castle/begin
