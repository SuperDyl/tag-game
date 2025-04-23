# Checks if the current player was just tagged
# by someone who's tg_tagCooldown is 0
# Run from the advancement tag:swap_tagger

# setup
execute on attacker if entity @s[tag=tm_tg_tagged] run tag @s add tg_tagger
tag @s add tg_tagged

# if done with cooldown AND tagged player isn't afk
execute if entity @s[team=!afkDis.afk,tag=!afk] if entity @p[tag=tg_tagger,scores={tg_tagCooldown=0}] run function tag:swap_tagger

# else still on cooldown AND tagged player isn't afk
execute if entity @s[team=!afkDis.afk,tag=!afk] unless entity @p[tag=tg_tagger,scores={tg_tagCooldown=0}] as @a[tag=tg_tagger] run function tag:cooldown_message

# Tell off other player for hitting an afk player
execute if entity @s[team=afkDis.afk] on attacker run tellraw @s [{"color":"red","text":"You cannot tag an AFK player!"}]
execute if entity @s[tag=afk] on attacker run tellraw @s [{"color":"red","text":"You cannot tag an AFK player!"}]

# cleanup
tag @s remove tg_tagged
execute on attacker run tag @s remove tg_tagger

advancement revoke @s only tag:player_tagged