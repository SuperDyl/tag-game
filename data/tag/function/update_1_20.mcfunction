# Migrates tag data from the Vanilla Tweaks tag to this tag game
# Run by tag:load

execute if score #tg_messages tg_messages matches 0 run scoreboard players set #tg_announceTags tg_config 0
execute if score #tg_messages tg_cooldown matches 0 run scoreboard players set #tg_cooldown tg_config 0

scoreboard objectives remove tg_tagged
scoreboard objectives remove tg_tagger

scoreboard objectives remove tg_messages
scoreboard objectives remove tg_cooldown
scoreboard objectives remove tg_constant

scoreboard players set #tg_post_vt tg_constant 1