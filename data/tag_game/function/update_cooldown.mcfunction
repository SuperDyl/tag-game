# Change cooldown
# Macro uses {conversion:1|60|1200,cooldown:0..}

$scoreboard players set #cooldown tg_config $(cooldown)
$scoreboard players set #conversion tg_temp $(conversion)
scoreboard players operation #cooldown tg_config *= #conversion tg_temp