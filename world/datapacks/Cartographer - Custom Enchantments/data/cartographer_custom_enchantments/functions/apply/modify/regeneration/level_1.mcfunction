data modify block 0 0 0 Items[0].tag merge value {Regeneration:1}
data modify block 0 0 0 Items[0].tag.display.Lore prepend value "{\"text\":\"Regeneration I\",\"color\":\"gray\",\"italic\":false}"

function cartographer_core:helper/items/return_item
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0