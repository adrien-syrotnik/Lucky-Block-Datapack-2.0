#if next_score = breakLB -> need a respawn !

execute as @e[name=NextStage,type=minecraft:armor_stand] unless score @s spawned > @e[name=GameManager,limit=1] 10 run scoreboard players add @s spawned 1


#wood (0) stage
execute if score PlatformType level matches 0 as @e[name="NextStage",type=armor_stand] at @a if score @s currentplayer = @p currentplayer if score @s next_score = @p breakLB run function lb:respawnstage/wood
#Hardened clay (1) stage
execute if score PlatformType level matches 1 as @e[name="NextStage",type=armor_stand] at @a if score @s currentplayer = @p currentplayer if score @s next_score = @p breakLB run function lb:respawnstage/clay
#mixed (2) stage = classic respawn stage ok
execute if score PlatformType level matches 2 as @e[name="NextStage",type=armor_stand] at @a if score @s currentplayer = @p currentplayer if score @s next_score = @p breakLB run function lb:respawnstage/mixed



execute as @e[name="NextStage",type=armor_stand,scores={level=0}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage at @s run function lb:levels/level1
execute as @e[name="NextStage",type=armor_stand,scores={level=1}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage at @s run function lb:levels/level2
execute as @e[name="NextStage",type=armor_stand,scores={level=2}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage at @s run function lb:levels/level3
execute as @e[name="NextStage",type=armor_stand,scores={level=3}] at @a if score @s currentplayer = @p currentplayer if score @s maxweightstage = @s weightstage if score @s next_score = @p breakLB at @s run function lb:levels/level4