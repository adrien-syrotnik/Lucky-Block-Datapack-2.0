execute as @e[name="NextStage",type=armor_stand] at @s run function lb:clearsolo
kill @e[type=bat]
clear @a[gamemode=!creative]

schedule clear lb:effects/malediction_degat
scoreboard players reset @a mdegat
scoreboard players reset @a oldscore

scoreboard players reset ingame ingame
scoreboard players reset @a ingame

fill -996 98 -997 -900 101 -1002 air
fill -1002 99 -1002 -998 103 -998 air
spawnpoint @a 5000 99 5000 0

#reset score boss bar
scoreboard players set @e[name=timer] secondes 0
scoreboard players set @e[name=timer] minutes 0
scoreboard players set @e[name=timer] bossbar 0
bossbar set minecraft:timer value 0
bossbar set minecraft:timer visible false