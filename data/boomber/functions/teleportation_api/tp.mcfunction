execute as @s run scoreboard players set @s bb.success 0
execute as @s run scoreboard players set #bb.tp_api.result.recursive_run bb.variable 0

function boomber:teleportation_api/setup/setup

execute as @s run function boomber:teleportation_api/teleport/chunk/x

execute as @s run scoreboard players set #bb.tp_api.cpos bb.variable 0
execute as @s run scoreboard players set @s bb.success 0