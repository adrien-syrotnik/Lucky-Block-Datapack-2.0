scoreboard players reset @a kit1
scoreboard players reset @a kit2
scoreboard players reset @a kit3
scoreboard players reset @a kit

kill @e[type=armor_stand,tag=EnderItems]

execute as @a run function lb:kits/get_random_kit1
execute as @a run function lb:kits/get_random_kit2
execute as @a run function lb:kits/get_random_kit3

# spawn an armorstand for each player to store their kit items
execute as @a at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["EnderItems"]}
#add same score to find the armorstand later
execute as @a at @s run scoreboard players operation @e[type=armor_stand,tag=EnderItems,limit=1,sort=nearest] currentplayer = @s currentplayer

execute as @a at @s run item replace entity @e[type=armor_stand,tag=EnderItems,limit=1,sort=nearest] armor.head from entity @s enderchest.4
execute as @a at @s run item replace entity @e[type=armor_stand,tag=EnderItems,limit=1,sort=nearest] weapon.offhand from entity @s enderchest.11
execute as @a at @s run item replace entity @e[type=armor_stand,tag=EnderItems,limit=1,sort=nearest] weapon.mainhand from entity @s enderchest.15

# set all block in the enderchest
item replace entity @a enderchest.22 with minecraft:player_head{display:{Name:"{\"text\":\"Random\"}"},SkullOwner:"I_mundercover"} 1

# tp the armorstand 3 block under the player
execute as @e[type=armor_stand,tag=EnderItems] at @s run tp @s ~ ~-4 ~