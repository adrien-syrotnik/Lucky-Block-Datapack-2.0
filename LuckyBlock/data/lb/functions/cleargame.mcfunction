
execute as @e[name="mario"] at @s run fill ~-2 ~-12 ~-2 ~2 ~-8 ~2 minecraft:air replace minecraft:brown_stained_glass
execute as @e[name="mario"] at @s run kill @s

effect clear @a
execute as @e[name="NextStage",type=armor_stand] at @s run function lb:clearsolo
kill @e[type=bat]
clear @a[gamemode=!creative]

schedule clear lb:effects/malediction_degat
scoreboard players reset @a mdegat
scoreboard players reset @a oldideffect

scoreboard players reset ingame ingame
scoreboard players reset @a ingame
scoreboard players reset @a abandon


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

execute as @a at @s run schedule clear lb:kits/effects/tank_schedule