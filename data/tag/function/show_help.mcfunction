# Shows the help menu
# Run by tag:tick

scoreboard players operation #seconds tg_temp = #cooldown tg_config
scoreboard players operation #seconds tg_temp /= #20 tg_config
scoreboard players operation #minutes tg_temp = #cooldown tg_config
scoreboard players operation #minutes tg_temp /= #1200 tg_config

tellraw @s [{"text":"Tag Game by SuperDyl","color":"green"}]
tellraw @s [{"color":"green","text":"Cooldown: "},{"score":{"name":"#cooldown","objective":"tg_config"}},{"text":" ticks; Aprx. "},{"score":{"name":"#seconds","objective":"tg_temp"}},{"text":" seconds OR "},{"score":{"name":"#minutes","objective":"tg_temp"}},{"text":" minutes"}]
tellraw @s [{"color":"green","text":"Set cooldown with unit: "},{"color":"yellow","text":"TICKS","click_event":{"action":"suggest_command","command":"/function tag:update_cooldown {conversion:1,cooldown:#ticks_here#}"},"hover_event":{"action":"show_text","value":"Click to set"}},{"color":"green","text":", "},{"color":"yellow","text":"SECONDS","click_event":{"action":"suggest_command","command":"/function tag:update_cooldown {conversion:20,cooldown:#seconds_here#}"},"hover_event":{"action":"show_text","value":"Click to set"}},{"color":"green","text":", "},{"color":"yellow","text":"MINUTES","click_event":{"action":"suggest_command","command":"/function tag:update_cooldown {conversion:1200,cooldown:#minutes_here#}"},"hover_event":{"action":"show_text",value:"Click to set"}}]
execute if score #announceTags tg_config matches 1 run tellraw @s [{"color":"green","text":"Tag announcements are enabled "}, {"color":"yellow","text":"[Disable tag announcements]","hover_event":{"action":"show_text","value":"Click to disable"},"click_event":{"action":"run_command","command":"/scoreboard players set #announceTags tg_config 0"}}]
execute if score #announceTags tg_config matches 0 run tellraw @s [{"color":"green","text":"Tag announcements are disabled "}, {"color":"yellow","text":"[Enable tag announcements]","hover_event":{"action":"show_text","value":"Click to disable"},"click_event":{"action":"run_command","command":"/scoreboard players set #announceTags tg_config 1"}}]

scoreboard players set @s tg_help 0