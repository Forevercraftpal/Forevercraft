# Guild — Add member to guild storage
# $(id) = guild ID, $(uuid3) = player companion.id, $(player_name) = name
$data modify storage evercraft:guild guilds."$(id)".members append value {uuid3:$(uuid3),name:"$(player_name)",rank:1,contrib:0}
