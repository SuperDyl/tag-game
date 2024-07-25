# Gives a message about the cooldown remaining
# Run by tag_game:check_tag

scoreboard players operation #seconds tg_temp = @s tg_tagCooldown
scoreboard players operation #seconds tg_temp /= #20 tg_config
scoreboard players operation #cooldown tg_temp = #cooldown tg_config
scoreboard players operation #cooldown tg_temp /= #20 tg_config
tellraw @s [{"text":"Tag on ","color":"yellow"},{"score":{"name":"#cooldown","objective":"tg_temp"}},{"text":" second cooldown! You have "},{"score":{"name":"#seconds","objective":"tg_temp"}},{"text":" seconds remaining"}]