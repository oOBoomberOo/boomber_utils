scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy

scoreboard players set #0 bb.variable 0
scoreboard players set #20 bb.variable 20
scoreboard players set #1000 bb.variable 1000

function boomber:randomizer/setup
function boomber:math/setup
function boomber:teleportation_api/setup
function boomber:light_detector/setup
function boomber:identification_api/setup

execute unless entity @e[type=armor_stand, tag=boomber.utils.memory] positioned 0 255 0 run function boomber:utils/reset_memory
execute as @e[tag=boomber.utils.memory] run tag @s remove boomber.light_detector.init