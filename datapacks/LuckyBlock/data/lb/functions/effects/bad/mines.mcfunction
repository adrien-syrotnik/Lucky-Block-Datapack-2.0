#summon 5 armorstand tagged mines, and spreadplayers them around the player, with a tnt on the head
summon armor_stand ~ ~5 ~ {Tags:["mine"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Rotation:[0f,0f],Small:1b,CustomName:'{"text":"/!\\\\","color":"dark_red","bold":true}',CustomNameVisible:1b}
summon armor_stand ~ ~5 ~ {Tags:["mine"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Rotation:[0f,0f],Small:1b,CustomName:'{"text":"/!\\\\","color":"dark_red","bold":true}',CustomNameVisible:1b}
summon armor_stand ~ ~5 ~ {Tags:["mine"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Rotation:[0f,0f],Small:1b,CustomName:'{"text":"/!\\\\","color":"dark_red","bold":true}',CustomNameVisible:1b}
summon armor_stand ~ ~5 ~ {Tags:["mine"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Rotation:[0f,0f],Small:1b,CustomName:'{"text":"/!\\\\","color":"dark_red","bold":true}',CustomNameVisible:1b}
summon armor_stand ~ ~5 ~ {Tags:["mine"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],Rotation:[0f,0f],Small:1b,CustomName:'{"text":"/!\\\\","color":"dark_red","bold":true}',CustomNameVisible:1b}

execute positioned ~ ~5 ~ run spreadplayers ~ ~ 1 2 false @e[tag=mine,distance=..1]

tellraw @p[scores={ingame=1},gamemode=survival] ["",{"text":"[Lucky Block] ","color":"dark_red"},{"text":"Mines have been spawned!","color":"red"}]
playsound minecraft:item.armor.equip_chain ambient @a ~ ~ ~ 1 0.1

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1