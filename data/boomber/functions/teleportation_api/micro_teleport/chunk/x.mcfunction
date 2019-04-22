scoreboard players add #bb.tp_api.result.recursive_run bb.variable 1

scoreboard players operation #bb.tp_api.chunk.x bb.calculation = #bb.tp_api.target.chunk.x bb.calculation

execute as @s[scores={bb.success=0}] if score #bb.tp_api.chunk.x bb.calculation matches ..-1 run scoreboard players add #bb.tp_api.target.chunk.x bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.chunk.x bb.calculation matches ..-1 positioned ~-0.1 ~ ~ run function boomber:teleportation_api/micro_teleport/chunk/x
execute as @s[scores={bb.success=0}] if score #bb.tp_api.chunk.x bb.calculation matches 1.. run scoreboard players remove #bb.tp_api.target.chunk.x bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.chunk.x bb.calculation matches 1.. positioned ~0.1 ~ ~ run function boomber:teleportation_api/micro_teleport/chunk/x

execute as @s[scores={bb.success=0}] if score #bb.tp_api.chunk.x bb.calculation matches 0 run function boomber:teleportation_api/micro_teleport/chunk/y
