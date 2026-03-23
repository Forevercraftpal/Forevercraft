# Grove Crop Trample Immunity
# Any Grove piece: prevents farmland from being trampled
# Converts dirt blocks back to farmland[moisture=7] if crops are nearby

# Check 3x3 area around player feet for dirt blocks that should be farmland
# Only converts dirt that has a crop directly above it (was just trampled)
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #minecraft:crops run setblock ~ ~ ~ farmland[moisture=7]

# Also check directly below player (y level)
execute if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~-1 ~ ~-1 if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~ ~ ~-1 if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~1 ~ ~-1 if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~-1 ~ ~ if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~1 ~ ~ if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~-1 ~ ~1 if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~ ~ ~1 if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
execute positioned ~1 ~ ~1 if block ~ ~-1 ~ minecraft:dirt if block ~ ~ ~ #minecraft:crops run setblock ~ ~-1 ~ farmland[moisture=7]
