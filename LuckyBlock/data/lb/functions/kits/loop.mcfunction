execute as @a unless entity @s[nbt={EnderItems:[{Slot:4b}]}] at @s as @e[type=armor_stand,tag=EnderItems] if score @s currentplayer = @p currentplayer run function lb:kits/select/kit1
execute as @a unless entity @s[nbt={EnderItems:[{Slot:11b}]}] at @s as @e[type=armor_stand,tag=EnderItems] if score @s currentplayer = @p currentplayer run function lb:kits/select/kit2
execute as @a unless entity @s[nbt={EnderItems:[{Slot:15b}]}] at @s as @e[type=armor_stand,tag=EnderItems] if score @s currentplayer = @p currentplayer run function lb:kits/select/kit3
execute as @a unless entity @s[nbt={EnderItems:[{Slot:22b}]}] at @s as @e[type=armor_stand,tag=EnderItems] if score @s currentplayer = @p currentplayer run function lb:kits/select/random

#timer, if all player selected a kit, start the endtimer
execute as @p[tag=endkittimer] run scoreboard players set kitselected nbplayers 0
execute as @a[tag=endkittimer] if entity @s[scores={kit=0..}] run scoreboard players add kitselected nbplayers 1
execute as @p[tag=endkittimer] if score @e[name="GameManager",limit=1,type=armor_stand] nbplayers = kitselected nbplayers run function lb:kits/timer/startendtimer


execute as @a[scores={on_death=2..}] at @s run function lb:events/ondeath
execute as @a[scores={on_death=1..}] at @s run scoreboard players set @s on_death 2

execute as @a[scores={on_death=1..}] at @s run tag @s add death_reset_abandon



execute as @a[scores={kit=3}] at @s run function lb:kits/effects/pretre
execute as @a[scores={kit=5}] at @s run function lb:kits/effects/tortue
execute as @a[scores={kit=6}] at @s run function lb:kits/effects/mario_effect