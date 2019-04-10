execute store result score #bb.ld.timer bb.variable run time query gametime
scoreboard players operation #bb.ld.timer bb.variable %= #20 bb.variable
execute if score #bb.ld.timer bb.variable matches 0 run tag @s add boomber.light_detector.init