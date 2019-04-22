scoreboard players set #bb.test.radius bb.variable 2

scoreboard players add #bb.test.offset bb.calculation 75
execute if score #bb.test.offset bb.calculation matches 20000.. run scoreboard players set #bb.test.offset bb.calculation 0

execute store result score #bb.test.pos.x bb.calculation run data get entity @s Pos[0]
execute store result score #bb.test.pos.y bb.calculation run data get entity @s Pos[1]
execute store result score #bb.test.pos.z bb.calculation run data get entity @s Pos[2]
execute store result score #bb.test.coord.x bb.calculation run data get entity @s Pos[0] 1000
execute store result score #bb.test.coord.y bb.calculation run data get entity @s Pos[1] 1000
execute store result score #bb.test.coord.z bb.calculation run data get entity @s Pos[2] 1000

scoreboard players operation #bb.test.pos.x bb.calculation *= #1000 bb.variable
scoreboard players operation #bb.test.pos.y bb.calculation *= #1000 bb.variable
scoreboard players operation #bb.test.pos.z bb.calculation *= #1000 bb.variable

scoreboard players operation #bb.test.coord.x bb.calculation -= #bb.test.pos.x bb.calculation
scoreboard players operation #bb.test.coord.y bb.calculation -= #bb.test.pos.y bb.calculation
scoreboard players operation #bb.test.coord.z bb.calculation -= #bb.test.pos.z bb.calculation

execute store result score #bb.math.input.angle bb.variable run data get entity @s Rotation[0]
function boomber:math/cos
scoreboard players operation #bb.test.rot.cos bb.calculation = #bb.math.result bb.variable

# execute store result score #bb.math.input.angle bb.variable run data get entity @s Rotation[0]
# function boomber:math/sin
# scoreboard players operation #bb.test.rot.sin bb.calculation = #bb.math.result bb.variable

# scoreboard players operation #bb.test.rot.cos bb.calculation *= #bb.test.radius bb.variable
# scoreboard players operation #bb.test.rot.sin bb.calculation *= #bb.test.radius bb.variable

# scoreboard players operation #bb.test.rot.cos bb.calculation /= #1000 bb.variable
# scoreboard players operation #bb.test.rot.sin bb.calculation /= #1000 bb.variable

scoreboard players operation #bb.test.coord.x bb.calculation += #bb.test.rot.cos bb.calculation
# scoreboard players operation #bb.test.coord.z bb.calculation += #bb.test.rot.sin bb.calculation
scoreboard players operation #bb.test.coord.z bb.calculation += #bb.test.offset bb.calculation

summon armor_stand ~ ~ ~ {Tags:["boomber.test.tp_marker"], NoGravity:1b, Invisible:1b, Marker:1b, Small:1b}
scoreboard players operation #bb.tp_api.input.target.x bb.variable = #bb.test.coord.x bb.calculation
scoreboard players operation #bb.tp_api.input.target.y bb.variable = #bb.test.coord.y bb.calculation
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #bb.test.coord.z bb.calculation

title @a actionbar [{"text": "target: "}, {"score": {"name": "#bb.test.rot.cos", "objective": "bb.calculation"}}, {"text": "/"}, {"score": {"name": "#bb.test.rot.sin", "objective": "bb.calculation"}}, {"text": "/"}, {"nbt": "Rotation[0]", "entity": "@s"}, {"text": "/"}, {"score": {"name": "#bb.math.angle", "objective": "bb.variable"}}]

execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run function boomber:teleportation_api/micro_tp
execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run particle happy_villager ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run kill @s

summon armor_stand ~ ~ ~ {Tags:["boomber.test.tp_marker"], NoGravity:1b, Invisible:1b, Marker:1b, Small:1b}

execute store result score #bb.test.pos.x bb.calculation run data get entity @s Pos[0]
execute store result score #bb.test.pos.y bb.calculation run data get entity @s Pos[1]
execute store result score #bb.test.pos.z bb.calculation run data get entity @s Pos[2]
execute store result score #bb.test.coord.x bb.calculation run data get entity @s Pos[0] 1000
execute store result score #bb.test.coord.y bb.calculation run data get entity @s Pos[1] 1000
execute store result score #bb.test.coord.z bb.calculation run data get entity @s Pos[2] 1000

scoreboard players operation #bb.tp_api.input.target.x bb.variable = #bb.test.pos.x bb.calculation
scoreboard players operation #bb.tp_api.input.target.y bb.variable = #bb.test.pos.y bb.calculation
scoreboard players add #bb.tp_api.input.target.y bb.variable 2
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #bb.test.pos.z bb.calculation
execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run function boomber:teleportation_api/tp

scoreboard players operation #bb.test.pos.x bb.calculation *= #1000 bb.variable
scoreboard players operation #bb.test.pos.y bb.calculation *= #1000 bb.variable
scoreboard players operation #bb.test.pos.z bb.calculation *= #1000 bb.variable

scoreboard players operation #bb.test.coord.x bb.calculation -= #bb.test.pos.x bb.calculation
scoreboard players operation #bb.test.coord.y bb.calculation -= #bb.test.pos.y bb.calculation
scoreboard players operation #bb.test.coord.z bb.calculation -= #bb.test.pos.z bb.calculation

scoreboard players operation #bb.test.coord.x bb.calculation += #bb.test.rot.cos bb.calculation

scoreboard players operation #bb.tp_api.input.target.x bb.variable = #bb.test.coord.x bb.calculation
scoreboard players operation #bb.tp_api.input.target.y bb.variable = #bb.test.coord.y bb.calculation
scoreboard players operation #bb.tp_api.input.target.z bb.variable = #bb.test.coord.z bb.calculation

execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run function boomber:teleportation_api/micro_tp
execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=armor_stand, tag=boomber.test.tp_marker] at @s run kill @s

