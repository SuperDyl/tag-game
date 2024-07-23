# Processes tag for the players with the tag 'tg_tagger' and 'tg_tagged'
# Run from tag_game:check_tag 

# process tagger
execute as @p[tag=tg_tagger] run function tag_game:become_normal

# process both
function tag_game:announce

# process tagged
execute as @p[tag=tg_tagged] run function tag_game:become_tagger
