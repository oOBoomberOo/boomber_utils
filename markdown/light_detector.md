# Light Detector
This module can detect the amount of skylight and return them in scoreboard

## Usage
1) you need an entity, this is required it won't work without entity.
2) run `/execute as <entity> run function boomber:light_detector/detect` (Due to the nature of daylight detector this function will return a "promise", please continue reading)
3) wait for that entity to have tag "boomber.light_detector.resolve"
4) get scoreboard `<entity> bb.light_level` and use this score however you want.
5) run `/tag <entity> boomber.light_detector.resolve`

## Promise
Because this module cannot return light level instantly, it needs to mark entities that want to get the light level with promise.  
After the function successfully gets the light level, "promise" will turn into "resolve" and the entity will finally have the light level score you requested.

## Error Handling
this module has a chance to fail if certain conditions are met and it'll handle those conditions as a negative value in scoreboard `<entity> bb.light_level`

### 0..15
Light level return value successfully

### -1
Some unknown error occurred in the module.  
This is likely due to the entity moving too fast but can be other things as well.  
To prevent this you can try to reduce the amount of movement the entity have to do or try not to `/setblock` at the entity's feet since that's where the module will be working at.

### -2
You're trying to run this function within a blacklisted block.  
You're trying to run this function within a block that have block's tag `boomber:light_detector/blacklist.json`  
Remove block id from that tag is not recommended (it is blacklisted for a reason)

## Blacklisted Blocks
Blacklisted blocks are blocks that will break or disappeared if you try to run this module at its location.  
It is not recommended to remove any block from that list since it is likely to result in dupe-glitch or weird behavior inside the game.