# Guild — Macro: create guild member storage
# $(id) = guild ID, $(uuid3) = player companion.id, $(player_name) = player name
$data modify storage evercraft:guild guilds."$(id)" set value {members:[{uuid3:$(uuid3),name:"$(player_name)",rank:7,contrib:0}]}
