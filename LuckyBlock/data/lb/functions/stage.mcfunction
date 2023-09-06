#if next_score = breakLB -> need a respawn !

execute as @e[name=NextStage,type=minecraft:armor_stand] unless score @s spawned > @e[name=GameManager,limit=1] 10 run scoreboard players add @s spawned 1

execute as @e[name="NextStage",type=armor_stand] at @a if score @s currentplayer = @p currentplayer if score @s next_score = @p breakLB run function lb:respawnstage


execute as @e[name="NextStage",type=armor_stand,scores={level=0}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage at @s run function lb:levels/level1
execute as @e[name="NextStage",type=armor_stand,scores={level=1}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage at @s run function lb:levels/level2
execute as @e[name="NextStage",type=armor_stand,scores={level=2}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage at @s run function lb:levels/level3
execute as @e[name="NextStage",type=armor_stand,scores={level=3}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage if score @s next_score = @p breakLB at @s run function lb:levels/level4