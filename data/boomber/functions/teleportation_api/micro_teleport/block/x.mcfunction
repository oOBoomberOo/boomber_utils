scoreboard players add #bb.tp_api.result.recursive_run bb.variable 1

scoreboard players operation #bb.tp_api.block.x bb.calculation = #bb.tp_api.target.coord.x bb.calculation

execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 1..9 run scoreboard players remove #bb.tp_api.target.coord.x bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 1..9 positioned ~0.001 ~ ~ run function boomber:teleportation_api/micro_teleport/block/x
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 10..49 run scoreboard players remove #bb.tp_api.target.coord.x bb.calculation 10
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 10..49 positioned ~0.010 ~ ~ run function boomber:teleportation_api/micro_teleport/block/x
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 50..99 run scoreboard players remove #bb.tp_api.target.coord.x bb.calculation 50
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 50..99 positioned ~0.050 ~ ~ run function boomber:teleportation_api/micro_teleport/block/x
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 100.. run scoreboard players remove #bb.tp_api.target.coord.x bb.calculation 100
execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 100.. positioned ~0.100 ~ ~ run function boomber:teleportation_api/micro_teleport/block/x

execute as @s[scores={bb.success=0}] if score #bb.tp_api.block.x bb.calculation matches 0 run function boomber:teleportation_api/micro_teleport/block/y
