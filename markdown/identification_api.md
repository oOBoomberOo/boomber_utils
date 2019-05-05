# Identification API (ID api) [Dev]
This module intended to create an easy way to assign custom id to an entity and quickly find them later.

## Setup :clap:
In order for the api to register the entity you want, you have to add tag "boomber.id_api" to the entity.  

## Assigning ID
Simply set score `bb.id_api` of an entity to some value and that is the id of that entity

## Basic ID Finding
After you have setup the entity you want.  
You can find them easily with these step  
1) set scoreboard #bb.id.input.find [`/scoreboard players set #bb.id.input.find bb.variable <id>`]
2) run `/execute as @e[tag=boomber.id_api] run function boomber:identification_api/find`
3) entities that matches the input id will got tagged with tag "boomber.id_api.found", this tag have short life time and will get automatically removed after the end of the tick.  
4) run `/execute as @e[tag=boomber.id_api.found] run ...` to do whatever you want with it :thumbsup:

## Advance ID Finding
In the 2nd step in [Basic ID Finding](#basic_id_finding) you can change the selector (`@e[tag=boomber.id_api]`) to whatever selector you want there is no limitation except that the entity you want to search for need to have tag `boomber.id_api`  
Example: `/execute as @e[type=villager, distance=..5] run function boomber:identification_api/find`

## Extras
### `boomber.id_api`
Without this tag the API will refuse to do anything with the entity, this is for performance reason, this tag has a long lifetime and will continue to exists on an entity until you remove it.

### `boomber.id_api.found`
Entities that match the input id will get tagged with this tag after you run `boomber:identification_api/find`, this tag has a short lifetime and will get automatically removed after the end of the tick.

## `bb.id_api`
Scoreboard objective to represent ID value of entities.  
A different entity can have the same ID value and if you run `boomber:identification_api/find` all entities that have the same id as the input id will get tagged with `boomber.id_api.found`