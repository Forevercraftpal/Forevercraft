# Forge Bond — Check for nearby Dexterity party member (macro)
# Arg: pid
# Returns count via store result

$execute if entity @a[scores={ec.party_id=$(pid),adv.dexterity=10..},distance=..16]
