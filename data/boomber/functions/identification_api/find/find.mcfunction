scoreboard players operation #bb.id.temp bb.calculation = @s bb.id_api
scoreboard players operation #bb.id.temp bb.calculation -= #bb.id.input.find bb.variable
execute if score #bb.id.temp bb.calculation matches 0 run tag @s add @s boomber.id_api.found