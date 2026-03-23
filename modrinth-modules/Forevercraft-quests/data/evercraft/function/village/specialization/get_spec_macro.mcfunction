# Get Village Specialization Macro
# Called with {vid: village_id}
# Sets #vs_current_spec vs.temp from storage (0 if not found)
$execute store result score #vs_current_spec vs.temp run data get storage eden:database village_spec.v$(vid)
