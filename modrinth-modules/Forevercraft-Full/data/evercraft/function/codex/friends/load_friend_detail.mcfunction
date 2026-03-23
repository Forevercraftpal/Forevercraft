# Codex Friends — Load friend detail from storage (macro)
# $(self_uuid3), $(target_uuid3) — finds the target entry and extracts hearts

$data modify storage evercraft:friends temp.detail_list set from storage evercraft:friends "u$(self_uuid3)".friends
function evercraft:codex/friends/find_detail_loop
