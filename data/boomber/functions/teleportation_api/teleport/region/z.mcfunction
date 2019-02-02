scoreboard players add #bb.tp_api.result.recursive_run bb.variable 1

scoreboard players operation #bb.tp_api.pos.z bb.calculation = #bb.tp_api.pos.region.z bb.calculation
scoreboard players operation #bb.tp_api.pos.target.z bb.calculation = #bb.tp_api.target.region.z bb.calculation
scoreboard players operation #bb.tp_api.pos.target.z bb.calculation -= #bb.tp_api.pos.z bb.calculation

execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches ..-10000 run scoreboard players remove #bb.tp_api.pos.region.z bb.calculation 10000
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches ..-10000 positioned ~ ~ ~-5120000 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -9999..-1000 run scoreboard players remove #bb.tp_api.pos.region.z bb.calculation 1000
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -9999..-1000 positioned ~ ~ ~-512000 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -999..-100 run scoreboard players remove #bb.tp_api.pos.region.z bb.calculation 100
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -999..-100 positioned ~ ~ ~-51200 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -99..-10 run scoreboard players remove #bb.tp_api.pos.region.z bb.calculation 10
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -99..-10 positioned ~ ~ ~-5120 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -9..-1 run scoreboard players remove #bb.tp_api.pos.region.z bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches -9..-1 positioned ~ ~ ~-512 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 1..9 run scoreboard players add #bb.tp_api.pos.region.z bb.calculation 1
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 1..9 positioned ~ ~ ~512 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 10..90 run scoreboard players add #bb.tp_api.pos.region.z bb.calculation 10
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 10..90 positioned ~ ~ ~5120 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 100..900 run scoreboard players add #bb.tp_api.pos.region.z bb.calculation 100
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 100..900 positioned ~ ~ ~51200 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 1000..9000 run scoreboard players add #bb.tp_api.pos.region.z bb.calculation 1000
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 1000..9000 positioned ~ ~ ~512000 run function boomber:teleportation_api/teleport/region/z
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 10000.. run scoreboard players add #bb.tp_api.pos.region.z bb.calculation 10000
execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 10000.. positioned ~ ~ ~5120000 run function boomber:teleportation_api/teleport/region/z

execute as @s[scores={bb.success=0}] if score #bb.tp_api.pos.target.z bb.calculation matches 0 run function boomber:teleportation_api/teleport/success
