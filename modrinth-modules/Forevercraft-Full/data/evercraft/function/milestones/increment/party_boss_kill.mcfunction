# Realm Milestone Increment — Party boss kill (4+ members)
# Called from boss on_kill handler if party size >= 4
# Only needs to fire once per boss kill — sets the flag directly
execute unless score #rm_done_30 ec.var matches 1 run function evercraft:milestones/complete/party_of_heroes
