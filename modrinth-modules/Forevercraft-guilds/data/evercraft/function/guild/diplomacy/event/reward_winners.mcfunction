# Guild Diplomacy — Reward a winning player
# @s = player on the winning team

scoreboard players add @s ec.guild_contrib 100
scoreboard players add @s ec.coins 15
scoreboard players add @s ec.gd_wins 1

# Update title
function evercraft:guild/diplomacy/titles/check_win

# Also add guild XP for the contribution
scoreboard players set #guild_xp_add ec.temp 10
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/contribution/apply_guild_xp

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"VICTORY! ",color:"gold",bold:true},{text:"+100 Contribution, +15 Forever Coins!",color:"yellow"}]
