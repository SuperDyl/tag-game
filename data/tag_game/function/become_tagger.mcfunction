# Makes the current player a tagger
# Run by tag_game:check_tag
# Can be run any any player to make them it
# Example: /execute as PLAYER run function tag_game:become_tagger

scoreboard players add @s tg_timesTagged 1
team join tg_tagged @s
function tag_game:spawn_tag
scoreboard players operation @s tg_tagCooldown = #cooldown tg_config
