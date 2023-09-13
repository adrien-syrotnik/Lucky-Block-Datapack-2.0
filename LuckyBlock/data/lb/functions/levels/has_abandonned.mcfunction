gamemode spectator @s
scoreboard players set @s finish 1
clear @s
stopsound @s
execute at @a run playsound minecraft:entity.wither.ambient master @p ~ ~ ~ 2 0.1 1
summon firework_rocket ~ ~ ~ {Silent:1b,Life:0,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16711680],FadeColors:[I;16746496]},{Type:4,Flicker:1b,Trail:1b,Colors:[I;16740464],FadeColors:[I;16777215]}]}}}}

tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@s","color":"dark_red"},{"text":" has give up the race.","color":"gold"}]

execute as @a[scores={finish=1..}] unless score @s currentplayer = @p currentplayer run scoreboard players add @p finish 1



scoreboard players set @s ingame 0

execute if score @s finish = @e[name="GameManager",type=armor_stand,limit=1] nbplayers run function lb:finish_game

scoreboard players set @s abandon 4