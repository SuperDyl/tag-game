# Makes the current player no longer the tagger
# Run by tag_game:swap_tagger

team leave @s
# intentionally clears all tags they have
clear @s minecraft:name_tag[minecraft:custom_data={tag_game:1b}]