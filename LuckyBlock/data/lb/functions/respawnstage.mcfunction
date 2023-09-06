scoreboard players set max RANDOM 29
function lb:rand
scoreboard players operation @s randomstage = @s RANDOM


execute if score @s randomstage matches 0..10 run scoreboard players set @s weightstagetoadd 1
execute if score @s randomstage matches 11..20 run scoreboard players set @s weightstagetoadd 2
execute if score @s randomstage matches 21..28 run scoreboard players set @s weightstagetoadd 3



#add le score
scoreboard players operation @s weightstage += @s weightstagetoadd

#if ok run spawn stage
execute unless score @s weightstage > @s maxweightstage run function lb:respawnstageok

execute if score @s weightstage > @s maxweightstage run scoreboard players operation @s weightstage -= @s weightstagetoadd




