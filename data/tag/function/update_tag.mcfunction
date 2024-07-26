# Replaces the old name tag from players
# Run by the advancement tag:update_tag_item

advancement revoke @s only tag:update_tag_item
clear @s minecraft:name_tag[minecraft:custom_name="{'text':'Tag!','color':'yellow','italic':true}"]
function tag:spawn_tag