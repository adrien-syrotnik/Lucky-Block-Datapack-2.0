scoreboard players set max RANDOM 14
function lb:rand


summon villager ~ ~ ~ {VillagerData:{level:2},Offers:{Recipes:[{maxUses:1,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:egg",Count:1b,tag:{display:{Name:'{"text":"Speed up your opponents"}',Lore:['{"text":"Apply a speed effect"}','{"text":"that hinders all your opponents"}']},Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Slow down your opponents"}',Lore:['{"text":"Apply a slowdown effect"}','{"text":"to all your opponents"}']},Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'{"text":"Emergency Tp"}',Lore:['{"text":"Tp you up in the air and land softly"}']},Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:0f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:red_bed",Count:1b,tag:{display:{Name:'{"text":"THE Red Bed","color":"red"}',Lore:['{"text":"Place meeee...."}']}}}}]}}

execute if score @s RANDOM matches 0 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:armorer"
execute if score @s RANDOM matches 1 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:butcher"
execute if score @s RANDOM matches 2 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:cartographer"
execute if score @s RANDOM matches 3 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:cleric"
execute if score @s RANDOM matches 4 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:farmer"
execute if score @s RANDOM matches 5 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:fisherman"
execute if score @s RANDOM matches 6 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:fletcher"
execute if score @s RANDOM matches 7 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:leatherworker"
execute if score @s RANDOM matches 8 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:librarian"
execute if score @s RANDOM matches 9 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:mason"
execute if score @s RANDOM matches 10 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:nitwit"
execute if score @s RANDOM matches 11 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:shepherd"
execute if score @s RANDOM matches 12 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:toolsmith"
execute if score @s RANDOM matches 13 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.profession set value "minecraft:weaponsmith"


#Advancement
advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/root

execute if score @s RANDOM matches 0 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/armorer
execute if score @s RANDOM matches 1 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/butcher
execute if score @s RANDOM matches 2 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/cartographer
execute if score @s RANDOM matches 3 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/cleric
execute if score @s RANDOM matches 4 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/farmer
execute if score @s RANDOM matches 5 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/fisherman
execute if score @s RANDOM matches 6 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/fletcher
execute if score @s RANDOM matches 7 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/leatherworker
execute if score @s RANDOM matches 8 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/librarian
execute if score @s RANDOM matches 9 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/mason
execute if score @s RANDOM matches 10 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/nitwit
execute if score @s RANDOM matches 11 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/shepherd
execute if score @s RANDOM matches 12 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/toolsmith
execute if score @s RANDOM matches 13 run advancement grant @p[gamemode=survival,scores={ingame=1}] only lb:villager/weaponsmith

#check if all advancements are done, then grant the final advancement
execute as @p[gamemode=survival,scores={ingame=1}] if entity @s[advancements={lb:lucky_block/catch_them_all=false,lb:villager/armorer=true,lb:villager/butcher=true,lb:villager/cartographer=true,lb:villager/cleric=true,lb:villager/farmer=true,lb:villager/fisherman=true,lb:villager/fletcher=true,lb:villager/leatherworker=true,lb:villager/librarian=true,lb:villager/mason=true,lb:villager/nitwit=true,lb:villager/shepherd=true,lb:villager/toolsmith=true,lb:villager/weaponsmith=true}] run advancement grant @s only lb:lucky_block/catch_them_all



scoreboard players set max RANDOM 7
function lb:rand

execute if score @s RANDOM matches 0 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:desert"
execute if score @s RANDOM matches 1 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:jungle"
execute if score @s RANDOM matches 2 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:plains"
execute if score @s RANDOM matches 3 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:savanna"
execute if score @s RANDOM matches 4 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:snow"
execute if score @s RANDOM matches 5 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:swamp"
execute if score @s RANDOM matches 6 run data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData.type set value "minecraft:taiga"


scoreboard players add @p[scores={ingame=1},gamemode=survival] lbluck 1