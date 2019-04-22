execute as @s run scoreboard players set @s bb.success 0
execute as @s run scoreboard players set #bb.tp_api.result.recursive_run bb.variable 0

function boomber:teleportation_api/setup/micro_setup

execute as @s align xyz positioned ~ ~ ~ run function boomber:teleportation_api/micro_teleport/chunk/x

execute as @s run scoreboard players set @s bb.success 0

