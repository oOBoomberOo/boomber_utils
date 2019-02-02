scoreboard players add #bb.tp_api.result.recursive_run bb.variable 1

scoreboard players operation #bb.tp_api.pos.y bb.calculation = #bb.tp_api.pos.coord.y bb.calculation
scoreboard players operation #bb.tp_api.pos.target.y bb.calculation = #bb.tp_api.target.coord.y bb.calculation
scoreboard players operation #bb.tp_api.pos.target.y bb.calculation -= #bb.tp_api.pos.y bb.calculation

execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.y bb.calculation matches ..-1 run scoreboard players remove #bb.tp_api.pos.coord.y bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.y bb.calculation matches ..-1 positioned ~ ~-1 ~ run function boomber:teleportation_api/teleport/coord/y
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.y bb.calculation matches 1.. run scoreboard players add #bb.tp_api.pos.coord.y bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.y bb.calculation matches 1.. positioned ~ ~1 ~ run function boomber:teleportation_api/teleport/coord/y

execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.y bb.calculation matches 0 run function boomber:teleportation_api/teleport/coord/z
