# Set laborer name — picks random name from pool for the given type
execute store result storage evercraft:laborers temp.name_idx int 1 run random value 0..29
$data modify storage evercraft:laborers temp.type set value "$(type)"
function evercraft:laborer/hire/apply_name with storage evercraft:laborers temp
