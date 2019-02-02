scoreboard players add #bb.tp_api.result.recursive_run bb.variable 1

scoreboard players operation #bb.tp_api.pos.x bb.calculation = #bb.tp_api.pos.coord.x bb.calculation
scoreboard players operation #bb.tp_api.pos.target.x bb.calculation = #bb.tp_api.target.coord.x bb.calculation
scoreboard players operation #bb.tp_api.pos.target.x bb.calculation -= #bb.tp_api.pos.x bb.calculation

execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.x bb.calculation matches ..-1 run scoreboard players remove #bb.tp_api.pos.coord.x bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.x bb.calculation matches ..-1 positioned ~-1 ~ ~ run function boomber:teleportation_api/teleport/coord/x
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.x bb.calculation matches 1.. run scoreboard players add #bb.tp_api.pos.coord.x bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.x bb.calculation matches 1.. positioned ~1 ~ ~ run function boomber:teleportation_api/teleport/coord/x

execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.x bb.calculation matches 0 run function boomber:teleportation_api/teleport/coord/y
