execute as @a at @s if score @s deathpotion matches 60 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 50 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 40 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 30 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 20 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 10 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 5 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}
execute as @a at @s if score @s deathpotion matches 1 run summon potion ~ ~7 ~ {Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"Death"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:20,Amplifier:4b,Duration:100}]}}}

scoreboard players remove @a[scores={deathpotion=1..}] deathpotion 1