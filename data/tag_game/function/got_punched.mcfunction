# get next_tagger and set for self and target
# increase next_tagger by 1
# swap who's it
# tellraw @a using score "@s tagged @p"

execute as @s on attacker run say I punched someone
say I got punched
# tellraw @a [{"selector":"@s", "color": "yellow"},{"text":" tagged a player!", "color": "yellow"}, {"selector":"@s", "color": "blue"}]
advancement revoke @s only tag_game:got_tagged

# the timer...
# 