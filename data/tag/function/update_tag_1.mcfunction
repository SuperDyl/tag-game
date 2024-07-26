# Replaces the old name tag from players
# Run by the advancement tag:update_tag_item_1

advancement revoke @s only tag:update_tag_item_1
clear @s minecraft:name_tag[minecraft:custom_name="§r§eTag!§r"]
function tag:spawn_tag