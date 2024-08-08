# Removes all data from tag
# Only run manually with /function tag:uninstall

scoreboard objectives remove tg_timesTagged
scoreboard objectives remove tg_help
scoreboard objectives remove tg_tagCooldown
scoreboard objectives remove tg_config
scoreboard objectives remove tg_temp

team remove tg_tagged

# Attempt to remove tags; only works for online players
tag @a remove tm_tg_tagged
tag @a remove tg_tagger
tag @a remove tg_tagged
