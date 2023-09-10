execute as @e[name="NextStage",type=armor_stand] at @s run function lb:clearsolo
kill @e[type=bat]
clear @a[gamemode=!creative]

schedule clear lb:effects/malediction_degat
scoreboard players reset @a mdegat
scoreboard players reset @a oldscore

scoreboard players reset ingame ingame
scoreboard players reset @a ingame

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
kill @e[name="jeb_"]