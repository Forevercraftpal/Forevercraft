# Guild GUI — Members Page
# @s = player viewing members

# Header
tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray"}]
tellraw @s [{text:" Guild Members",color:"green",bold:true}]
tellraw @s [{text:"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",color:"dark_gray"}]

# List all online guild members with their rank
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = @p[tag=ec.guild_viewer] ec.guild_id run function evercraft:guild/gui/show_member
