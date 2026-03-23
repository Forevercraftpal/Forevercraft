# Codex Friends — Load friend list from storage to temp (macro)
# $(self_uuid3)
$data modify storage evercraft:friends temp.page_list set from storage evercraft:friends "u$(self_uuid3)".friends
