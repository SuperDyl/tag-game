# Shows the help menu
# Run by tag_game:tick

scoreboard players operation #seconds tg_temp = #cooldown tg_config
scoreboard players operation #seconds tg_temp /= #20 tg_config
scoreboard players operation #minutes tg_temp = #cooldown tg_config
scoreboard players operation #minutes tg_temp /= #1200 tg_config

tellraw @s [{"text":"Tag Game by SuperDyl","color":"green"}]
tellraw @s [{"color":"green","text":"Cooldown: "},{"score":{"name":"#cooldown","objective":"tg_config"}},{"text":" ticks; Aprx. "},{"score":{"name":"#seconds","objective":"tg_temp"}},{"text":" seconds OR "},{"score":{"name":"#minutes","objective":"tg_temp"}},{"text":" minutes"}]
tellraw @s [{"color":"green","text":"Set cooldown with unit: "},{"text": "TICKS","clickEvent":{"action":"suggest_command","value":"/function tag_game:update_cooldown {conversion:1,cooldown:#ticks_here#}"},"hoverEvent":{"action":"show_text","contents":"Click to set"}},{"text":", "},{"text":"SECONDS","clickEvent":{"action":"suggest_command","value":"/function tag_game:update_cooldown {conversion:20,cooldown:#seconds_here#}"},"hoverEvent":{"action":"show_text","contents":"Click to set"}},{"text":", "},{"text":"MINUTES","clickEvent":{"action":"suggest_command","value":"/function tag_game:update_cooldown {conversion:1200,cooldown:#minutes_here#}"},"hoverEvent":{"action":"show_text","contents":"Click to set"}}]

scoreboard players set @s tg_help 0