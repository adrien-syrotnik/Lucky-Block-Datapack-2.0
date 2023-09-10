loot replace entity @s enderchest.15 loot lb:kit
execute store result score @s kit3 run data get entity @s EnderItems[2].tag.id

execute if score @s kit1 = @s kit3 run function lb:kits/get_random_kit3
execute if score @s kit2 = @s kit3 run function lb:kits/get_random_kit3