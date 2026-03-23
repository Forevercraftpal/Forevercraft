# Fetch Furia name from database (indices 126-250)
# Reads first_name and last_name from eden:database into evercraft:furia/temp
$data modify storage evercraft:furia/temp first_name set from storage eden:database names.patrons.first.$(first_name)
$data modify storage evercraft:furia/temp last_name set from storage eden:database names.patrons.last.$(last_name)
