loot replace entity @s enderchest.11 loot lb:kit
execute store result score @s kit2 run data get entity @s EnderItems[1].tag.id

execute if score @s kit1 = @s kit2 run function lb:kits/get_random_kit2