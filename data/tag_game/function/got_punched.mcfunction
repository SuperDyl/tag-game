# get next_tagger and set for self and target
# increase next_tagger by 1
# swap who's it
# tellraw @a using score "@s tagged @p"

# setup
execute on attacker run tag @s add tg_tag_in_process

# process
tellraw @a [{"selector":"@p[tag=tg_tag_in_process]","color":"yellow"},{"text":" tagged "},{"selector":"@s"},{"text":"!"}]

# cleanup
advancement revoke @s only tag_game:got_tagged
execute on attacker run tag @s remove tg_tag_in_process

# the timer...