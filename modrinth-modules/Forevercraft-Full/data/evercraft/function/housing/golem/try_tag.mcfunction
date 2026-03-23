# Housing — Try to tag a snow golem as a home defender
# Run as: untagged snow_golem near an HS.Marker, at golem position
# Tags hs.golem if the nearest player is in their home zone

# Nearest player must be in their home zone (they built this golem)
execute if entity @a[scores={hs.in_zone=1},distance=..10,limit=1] run tag @s add hs.golem
