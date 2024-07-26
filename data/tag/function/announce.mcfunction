# Announces when the tag switches hands
# Uses the players with the tags 'tg_tagger' and 'tg_tagged'
# Run by tag:check_tag

execute if score #announceTags tg_config matches 1 run tellraw @a [{"selector":"@p[tag=tg_tagger]","color":"yellow"},{"text":" tagged "},{"selector":"@p[tag=tg_tagged]"},{"text":"!"}]
