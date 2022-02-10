#plane check
execute positioned ~ ~ ~ unless predicate vr:block_check/row run tp @s ~ ~ ~
execute positioned ~ ~ ~1 unless predicate vr:block_check/row run tp @s ~ ~ ~
execute positioned ~ ~ ~2 unless predicate vr:block_check/row run tp @s ~ ~ ~
execute positioned ~ ~ ~3 unless predicate vr:block_check/row run tp @s ~ ~ ~
execute positioned ~ ~ ~4 unless predicate vr:block_check/row run tp @s ~ ~ ~

#final ground check
execute at @s positioned ~ ~1 ~ run function vr:home/return/valid_return/ground_check