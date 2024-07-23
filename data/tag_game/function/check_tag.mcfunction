# Checks if the current player was just tagged
# by somone who's tg_tagCooldown is 0
# Run from the advancement tag_game:swap_tagger

# setup
execute on attacker run tag @s add tg_tagger
tag @s add tg_tagged

# test cooldown
execute if entity @p[tag=tg_tagger,scores={tg_tagCooldown=0}] run function tag_game:swap_tagger

# cleanup
tag @s remove tg_tagged
execute on attacker run tag @s remove tg_tagger

advancement revoke @s only tag_game:got_tagged