# Guild — Spawn marker entity at 0 -61 0
# $(id) = guild ID, $(name) = guild name, $(creator_uuid3) = creator ID, $(created_day) = day
$summon marker 0 -61 0 {Tags:["ec.guild","ec.guild_new"],data:{id:$(id),name:"$(name)",level:1,xp:0,member_count:1,created_day:$(created_day),creator_uuid3:$(creator_uuid3),active_buff:0,alliances:[],enemies:[],cooldowns:[],GuildPets:[],GuildNPCs:[]}}
# Set scoreboard ID for predicate matching
$scoreboard players set @e[type=marker,tag=ec.guild_new,limit=1] ec.guild_id $(id)
tag @e[type=marker,tag=ec.guild_new] remove ec.guild_new
