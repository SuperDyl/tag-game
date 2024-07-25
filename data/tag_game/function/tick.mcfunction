# Ticks down timer and managers /trigger commands
# Run on every tick

# reset player's cooldown if greater than maximum cooldown
execute as @a if score @s tg_tagCooldown > #cooldown tg_config run scoreboard players operation @s tg_tagCooldown = #cooldown tg_config

# decrease cooldown every tick
scoreboard players remove @a[scores={tg_tagCooldown=1..}] tg_tagCooldown 1

# show help menu when player uses /trigger tg_help
execute as @a[scores={tg_help=1..}] run function tag_game:show_help
execute as @a[scores={tg_help=..-1}] run function tag_game:show_help
scoreboard players enable @a tg_help