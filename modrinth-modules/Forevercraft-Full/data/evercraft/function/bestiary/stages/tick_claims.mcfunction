# Bestiary Stages — Tick Claims
# Runs every tick from main tick function
# Processes pending claims (enable moved to on_join + after claim)

# Process any pending claims (1-63 = valid mob IDs)
execute as @a[scores={bs.claim=1..63}] run function evercraft:bestiary/stages/dispatch_claim
