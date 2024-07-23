# Gives a message about the cooldown remaining
# Run by tag_game:check_tag

scoreboard players operation @s tg_cooldownSeconds = @s tg_tagCooldown
scoreboard players operation @s tg_cooldownSeconds /= #20 tg_config
tellraw @s [{"text":"Tag on cooldown! You have ","color":"yellow"},{"score":{"name":"*","objective":"tg_cooldownSeconds"}},{"text":" seconds remaining"}]