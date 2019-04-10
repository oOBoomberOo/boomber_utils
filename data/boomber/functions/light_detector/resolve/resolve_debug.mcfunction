execute as @s[scores={bb.light_level=0..}] run tellraw @s [{"text": "Resolved Brightness: "}, {"score": {"name": "@s", "objective": "bb.light_level"}}]
execute as @s[scores={bb.light_level=-1}] run tellraw @s [{"text": "Something went wrong: ", "color": "red"}, {"score": {"name": "@s", "objective": "bb.light_level"}}]
execute as @s[scores={bb.light_level=-2}] run tellraw @s [{"text": "Blacklisted Block: ", "color": "red"}, {"score": {"name": "@s", "objective": "bb.light_level"}}]
tag @s remove boomber.light_detector.detect
tag @s remove boomber.light_detector.resolve
tag @s remove boomber.light_detector.feedback
