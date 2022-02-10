scoreboard players set column= vr.main 0
scoreboard players set plane= vr.main 0

execute unless predicate vr:block_check/column run function vr:home/return/valid_return/column_check
execute if predicate vr:block_check/column run function vr:home/return/valid_return/plane_check