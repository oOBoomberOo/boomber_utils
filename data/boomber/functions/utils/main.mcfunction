execute as @r[nbt={Dimension:0}] at @s positioned ~ 255 ~ run tp @e[tag=boomber.utils.memory] ~ ~ ~
execute as @e[tag=boomber.utils.memory, tag=!boomber.light_detector.init] run function boomber:light_detector/init
execute as @e[tag=boomber.utils.memory, tag=boomber.light_detector.init] run function boomber:light_detector/main

function boomber:utils/garbage_collector