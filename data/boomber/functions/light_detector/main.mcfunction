scoreboard players add #bb.ld.timer bb.variable 1
execute if score #bb.ld.timer bb.variable matches 20.. run scoreboard players set #bb.ld.timer bb.variable 0

execute as @a[tag=boomber.light_detector.detect, tag=!boomber.light_detector.resolve] at @s if score #bb.ld.timer bb.variable matches 0 run function boomber:light_detector/light_detection/pre_light_level
execute as @a[tag=boomber.light_detector.detect, tag=boomber.light_detector.promise, tag=!boomber.light_detector.resolve] at @s if score #bb.ld.timer bb.variable matches 1 run function boomber:light_detector/light_detection/get_light_level

execute as @a[tag=boomber.light_detector.resolve, tag=boomber.light_detector.feedback] run function boomber:light_detector/resolve/resolve_debug
execute as @a[tag=boomber.light_detector.resolve] run function boomber:light_detector/resolve/resolve