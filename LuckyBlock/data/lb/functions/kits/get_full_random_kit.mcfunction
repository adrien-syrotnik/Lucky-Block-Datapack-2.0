loot replace entity @s enderchest.4 loot lb:kit
execute store result score @s kit run data get entity @s EnderItems[0].tag.id
function lb:kits/tellraw_kit