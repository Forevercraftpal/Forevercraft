# Assign Village Specialization Macro
# Called with {vid: village_id, spec: specialization_id}
$data modify storage eden:database village_spec.v$(vid) set value $(spec)
