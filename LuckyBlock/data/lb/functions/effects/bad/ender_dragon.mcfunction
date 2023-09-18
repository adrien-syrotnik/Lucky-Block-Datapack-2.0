playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 50 0.5
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dragon"],Rotation:[180f,0f]}
scoreboard players set @e[type=armor_stand,tag=dragon,limit=1,sort=nearest] count 200

summon ender_dragon ~ ~ ~ {Tags:["dragon"]}
scoreboard players set @e[type=ender_dragon,tag=dragon,limit=1,sort=nearest] count 200