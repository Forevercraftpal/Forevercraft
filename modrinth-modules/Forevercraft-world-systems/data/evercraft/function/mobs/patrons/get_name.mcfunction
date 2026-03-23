# Fetch Patron name from database (indices 1-125)
# Reads first_name and last_name from eden:database into evercraft:patrons/temp
$data modify storage evercraft:patrons/temp first_name set from storage eden:database names.patrons.first.$(first_name)
$data modify storage evercraft:patrons/temp last_name set from storage eden:database names.patrons.last.$(last_name)
