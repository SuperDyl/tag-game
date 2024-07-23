# Replaces the old name tag from players
# Run by the advancement tag_game:update_tag_item

advancement revoke @s only tag_game:update_tag_item
clear @s minecraft:name_tag[minecraft:custom_name="{'text':'Tag!','color':'yellow','italic':true}"]
function tag_game:spawn_tag