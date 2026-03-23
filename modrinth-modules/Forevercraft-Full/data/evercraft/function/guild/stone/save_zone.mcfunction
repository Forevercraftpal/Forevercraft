# Guild Stone — Save zone coordinates on guild marker
# @s = guild marker, $(zone_x), $(zone_y), $(zone_z), $(zone_dim)
$data merge entity @s {data:{zone:{x:$(zone_x),y:$(zone_y),z:$(zone_z),dim:$(zone_dim)}}}
