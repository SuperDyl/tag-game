# Migrates tag data from the Vanilla Tweaks tag to this tag game
# Run by tag_game:load

scoreboard objectives remove tg_tagged
scoreboard objectives remove tg_tagger

scoreboard objectives remove tg_messages
scoreboard objectives remove tg_cooldown
scoreboard objectives remove tg_constant

scoreboard players set #tg_post_vt tg_constant 1