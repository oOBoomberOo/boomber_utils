scoreboard players set @s bb.light_level -1
execute as @s[tag=!boomber.light_detector.resolve] positioned ~ ~ ~ if block ~ ~ ~ #boomber:light_detector/blacklist run function boomber:light_detector/light_detection/blacklist
execute as @s[tag=!boomber.light_detector.resolve] positioned ~ ~ ~ run clone ~ ~0 ~ ~ ~0 ~ ~ 0 ~ replace normal
execute as @s[tag=!boomber.light_detector.resolve] positioned ~ ~ ~ run setblock ~ ~ ~ minecraft:daylight_detector
execute as @s[tag=!boomber.light_detector.resolve] run tag @s add boomber.light_detector.promise