# somehow revoking the enchantment first does this recursively
advancement revoke @s only tag_game:update_tag_item
clear @s minecraft:name_tag[minecraft:custom_name="{'text':'Tag!','color':'yellow','italic':true}"] 1
function tag_game:spawn_tag