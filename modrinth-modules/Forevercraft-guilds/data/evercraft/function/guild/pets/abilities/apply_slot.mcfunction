# Guild Companion Abilities — Apply abilities for one slot (macro)
# Run as: player
# Args via storage: {ability_signature:"wolf", ability_slot:0}
# Requires: #value companion.calc = companion level (already set)
# Reuses the same passive ability functions as home companions
# Modifier names use guild/slotN/ prefix to avoid home conflicts

$function evercraft:companions/handler/home/abilities/passive/$(ability_signature) with storage evercraft:companions guild
