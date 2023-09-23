
execute as @e[name="mario"] at @s run fill ~-2 ~-12 ~-2 ~2 ~-8 ~2 minecraft:air replace minecraft:brown_stained_glass
execute as @e[name="mario"] at @s run kill @s

effect clear @a
execute as @e[name="NextStage",type=armor_stand] at @s run function lb:clearsolo
kill @e[type=bat]
clear @a[gamemode=!creative]

tag @a remove 2inRaw2
tag @a remove 2inRaw
tag @a remove winner

schedule clear lb:effects/malediction_degat
scoreboard players reset @a mdegat
scoreboard players reset @a oldideffect

scoreboard players reset ingame ingame
scoreboard players reset @a ingame
scoreboard players reset @a abandon
scoreboard players reset @a passif_game

scoreboard players reset @a lbunluck
scoreboard players reset @a lbluck

gamerule keepInventory false

spawnpoint @a 5000 99 5000 0

#reset score boss bar
scoreboard players set @e[name=timer] secondes 0
scoreboard players set @e[name=timer] minutes 0
scoreboard players set @e[name=timer] bossbar 0
bossbar set minecraft:timer value 0
bossbar set minecraft:timer visible false

#delete and recreate the Distance scoreboard
scoreboard objectives remove Distance
scoreboard objectives add Distance dummy
scoreboard objectives setdisplay sidebar Distance

execute as @a at @s run attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:instant_health 1 100 true
kill @e[name="jeb_"]
kill @e[tag=spawnpoint,type=armor_stand]

execute as @a at @s run schedule clear lb:kits/effects/tank_schedule

execute as @s[scores={kit=3}] at @s run effect clear @s minecraft:resistance
scoreboard players reset @a kit
scoreboard players reset @a effect_curse_heal