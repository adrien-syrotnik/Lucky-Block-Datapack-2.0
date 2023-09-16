playsound minecraft:entity.wither.death ambient @a ~ ~ ~ 50 0.1
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 50 0.1
summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~1 ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~ ~ ~1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~-1 ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~ ~ ~-1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~1 ~ ~1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~-1 ~ ~1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~1 ~ ~-1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~-1 ~ ~-1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}

summon creeper ~ ~1 ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~1 ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~ ~ ~1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~-1 ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~ ~ ~-1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~1 ~ ~1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~-1 ~ ~1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~1 ~ ~-1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}
summon creeper ~-1 ~ ~-1 {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Nuke","color":"dark_red","bold":true}',Invulnerable:1b}


execute as @a run function lb:effects/spawn_nuke_explosion
#spawn an armor stand on 8 coins
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[0f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[45f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[90f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[135f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[180f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[225f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[270f,0f]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["nuke_explosion"],Rotation:[315f,0f]}

#give score
scoreboard players set @e[tag=nuke_explosion,distance=..1] count 100

particle minecraft:flame ~ ~ ~ 4 25 4 0.05 100000 force @a