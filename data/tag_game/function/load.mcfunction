# Sets up scoreboards/teams and updates any old data
# Runs on load/reload

# EVERYTIME

# Kept from old tag
scoreboard objectives add tg_timesTagged dummy "Times Tagged"
# scoreboard objectives add tg_help trigger "show tag help"
scoreboard objectives add tg_tagCooldown dummy "Tag Cooldown"
scoreboard objectives add tg_config dummy "Tag Config"

team add tg_tagged "Tagged Player"
team modify tg_tagged color red
team modify tg_tagged nametagVisibility always

# ON UPDATE
execute unless score #tg_post_vt tg_config matches 1 run function tag_game:update_1_20
scoreboard players set #tg_version tg_config 1

# ON CREATION
execute unless score #cooldown tg_config = #cooldown tg_config run scoreboard players set #cooldown tg_config 0

# NOTES
# scoreboard objectives add tg_taggedId
# scoreboard objectives add tag_game:tagger dummy "Tagger Id"
# scoreboard objectives add tag_game:tagged dummy "Tagged Id"
# tg_tagCooldown # countdown to 0
# tg_tagged # count up when it
# tg_tagger # shrug

# data modify storage tag_game:data version set value 1