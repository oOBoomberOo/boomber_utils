scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.light_level dummy

scoreboard players set #10 bb.variable 10
scoreboard players set #16 bb.variable 16
scoreboard players set #20 bb.variable 20
scoreboard players set #32 bb.variable 32
scoreboard players set #160 bb.variable 160
scoreboard players set #512 bb.variable 512

function boomber:randomizer/setup

execute unless entity @e[type=armor_stand, tag=boomber.utils.memory] positioned 0 255 0 run function boomber:utils/reset_memory
execute as @e[tag=boomber.utils.memory] run tag @s remove boomber.light_detector.init