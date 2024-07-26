# Processes tag for the players with the tag 'tg_tagger' and 'tg_tagged'
# Run from tag:check_tag 

# process tagger
execute as @p[tag=tg_tagger] run function tag:become_normal

# process both
function tag:announce

# process tagged
execute as @p[tag=tg_tagged] run function tag:become_tagger
