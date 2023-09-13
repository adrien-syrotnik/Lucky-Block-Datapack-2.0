execute as @p run scoreboard players set @s music 1
execute as @p run function lb:effects/good/bcs_music

summon turtle ~ ~ ~ {Passengers:[{id:"minecraft:armor_stand",Small:1b,CustomName:'{"text":"You goddamn right"}',CustomNameVisible:1b,Pose:{LeftLeg:[305f,320f,0f],RightLeg:[297f,24f,0f],LeftArm:[26f,0f,0f],RightArm:[22f,0f,0f]},NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:0}}},{id:"leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:4658176}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-421047493,-847296486,-1774225659,-323821863],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk5M2RkYTg0NmY2NTA3NTBjNTVmNzhkYTc4ZjM3MjFhY2YzZTRmNjliMGFlY2Q2Y2Q0NDA0ODMxYjA4NDUzNSJ9fX0="}]}}}}]}]}

scoreboard players set @e[type=turtle,limit=1,sort=nearest] count 315