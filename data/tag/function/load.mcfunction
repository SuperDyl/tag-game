# Sets up scoreboards/teams and updates any old data
# Runs on load/reload

# EVERYTIME

# Kept from old tag
scoreboard objectives add tg_timesTagged dummy "Times Tagged"
scoreboard objectives add tg_help trigger "show tag help"
scoreboard objectives add tg_tagCooldown dummy "Tag Cooldown"
scoreboard objectives add tg_config dummy "Tag Config"
scoreboard objectives add tg_temp dummy "Temporary Values"

scoreboard players set #20 tg_config 20
scoreboard players set #1200 tg_config 1200

team add tg_tagged "Tagged Player"
team modify tg_tagged color red
team modify tg_tagged nametagVisibility always

# ON UPDATE
execute unless score #tg_post_vt tg_config matches 1 run function tag:update_1_20
scoreboard players set #tg_version tg_config 1

# ON CREATION
execute unless score #cooldown tg_config = #cooldown tg_config run scoreboard players set #cooldown tg_config 1200
execute unless score #announceTags tg_config = #announceTags tg_config run scoreboard players set #announceTags tg_config 1
