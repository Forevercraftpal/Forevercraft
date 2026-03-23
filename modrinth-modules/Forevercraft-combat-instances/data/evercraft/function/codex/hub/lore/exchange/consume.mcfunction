# Lore Exchange — Consume specific lore piece by UID (macro)
# Called with: {uid: <int>}
# Clears exactly the piece the player intended to deposit

$clear @s *[custom_data~{lore_uid:$(uid)}] 1
