# Makes the current player a tagger
# Run by tag:check_tag
# Can be run any any player to make them it
# Example: /execute as PLAYER run function tag:become_tagger

scoreboard players add @s tg_timesTagged 1
team join tg_tagged @s
function tag:spawn_tag
scoreboard players operation @s tg_tagCooldown = #cooldown tg_config
