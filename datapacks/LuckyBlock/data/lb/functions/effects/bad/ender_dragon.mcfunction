playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 50 0.5
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["dragon"],Rotation:[180f,0f]}
scoreboard players set @e[type=armor_stand,tag=dragon,distance=..2,sort=nearest] count 200

summon ender_dragon ~ ~ ~ {Tags:["dragon"],DragonPhase:8,CustomName:'{"text":"Suprise Mother F*****","color":"black","bold":true}',CustomNameVisible:1b}
scoreboard players set @e[type=ender_dragon,tag=dragon,distance=..2,sort=nearest] count 200

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1