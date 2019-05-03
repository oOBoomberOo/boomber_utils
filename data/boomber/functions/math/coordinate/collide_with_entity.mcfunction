scoreboard players operation #bb.math.input.i bb.variable = #bb.math.input.x bb.variable
scoreboard players operation #bb.math.input.j bb.variable = #bb.math.input.y bb.variable
scoreboard players operation #bb.math.input.k bb.variable = #bb.math.input.z bb.variable
execute store result score #bb.math.input.x bb.variable run data get entity @s Pos[0] 1000
execute store result score #bb.math.input.y bb.variable run data get entity @s Pos[1] 1000
execute store result score #bb.math.input.z bb.variable run data get entity @s Pos[2] 1000

function boomber:math/coordinate/collide

execute if score #bb.math.result bb.variable matches 1 run tag @s add boomber.math.collided