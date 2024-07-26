# Replaces the old name tag from players
# Run by the advancement tag:update_tag_item_2

advancement revoke @s only tag:update_tag_item_2
clear @s minecraft:name_tag[minecraft:item_name="Tag!",minecraft:custom_data={"tag":{"tag":true}}]
function tag:spawn_tag