# Makes the current player no longer the tagger
# Run by tag:swap_tagger

team leave @s
tag @s remove tm_tg_tagged
# intentionally clears all tags they have
clear @s minecraft:name_tag[minecraft:custom_data={tag:1b}]