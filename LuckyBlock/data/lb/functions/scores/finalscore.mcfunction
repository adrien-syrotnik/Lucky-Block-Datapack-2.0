#stop timerun
scoreboard players reset ingame ingame

#set level for each score and if no one match summon it
scoreboard players reset @e[tag=finalscore] level

execute as @e[tag=finalscore] if score level0weight maxweightstage = @s lbphase1 run scoreboard players set @s level 1
execute as @e[tag=finalscore,scores={level=1}] if score level1weight maxweightstage = @s lbphase2 run scoreboard players set @s level 2
execute as @e[tag=finalscore,scores={level=2}] if score level2weight maxweightstage = @s lbphase3 run scoreboard players set @s level 3
execute as @e[tag=finalscore,scores={level=3}] if score level3weight maxweightstage = @s lbphase4 run scoreboard players set @s level 4

#if doesn't exist, summon it and set its scores
execute unless entity @e[tag=finalscore,scores={level=4},limit=1] run summon minecraft:armor_stand 0 0 0 {Invisible:0b,Invulnerable:0b,Marker:0b,Tags:["finalscore"],NoGravity:1b,ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}}]}
execute unless entity @e[tag=finalscore,scores={level=4},limit=1] positioned 0 0 0 run scoreboard players operation @e[tag=finalscore,limit=1,distance=..2] lbphase1 = level0weight maxweightstage
execute unless entity @e[tag=finalscore,scores={level=4},limit=1] positioned 0 0 0 run scoreboard players operation @e[tag=finalscore,limit=1,distance=..2] lbphase2 = level1weight maxweightstage
execute unless entity @e[tag=finalscore,scores={level=4},limit=1] positioned 0 0 0 run scoreboard players operation @e[tag=finalscore,limit=1,distance=..2] lbphase3 = level2weight maxweightstage
execute unless entity @e[tag=finalscore,scores={level=4},limit=1] positioned 0 0 0 run scoreboard players operation @e[tag=finalscore,limit=1,distance=..2] lbphase4 = level3weight maxweightstage
execute positioned 0 0 0 run tp @e[tag=finalscore,distance=..2] -7 -59 -7

#set the score level to 4 for the right armor stand to be more easier
execute as @e[tag=finalscore] if score level0weight maxweightstage = @s lbphase1 if score level1weight maxweightstage = @s lbphase2 if score level2weight maxweightstage = @s lbphase3 if score level3weight maxweightstage = @s lbphase4 run scoreboard players set @s level 4

#get the position of the player from time_run, compare them to the scoreboard top1,top2,top3
scoreboard players set @a[scores={abandon=0}] Position 1
scoreboard players set top1old Position 1
scoreboard players set top2old Position 2
scoreboard players set top3old Position 3
execute as @e[tag=finalscore,scores={level=4}] run function lb:scores/getscoreposition_oldtop

#IF no score on old top, reset the score
execute as @e[tag=finalscore,scores={level=4}] unless score @s top1 matches 0.. run scoreboard players reset top1old Position
execute as @e[tag=finalscore,scores={level=4}] unless score @s top2 matches 0.. run scoreboard players reset top2old Position
execute as @e[tag=finalscore,scores={level=4}] unless score @s top3 matches 0.. run scoreboard players reset top3old Position


execute as @e[tag=finalscore,scores={level=4}] at @a[scores={abandon=0}] run function lb:scores/getscoreposition

# voir si cette commande est mieux
# execute as @a run scoreboard operation scoreHolder mostKills > @s kills

#setblock to store values
execute unless block -5 -60 -5 shulker_box run setblock -5 -60 -5 minecraft:shulker_box
setblock -5 -59 -5 minecraft:acacia_wall_sign[facing=east]

# #set the new score for the armor stand
execute as @e[type=minecraft:armor_stand] if score @s score_position matches 1..3 run data modify entity @s CustomName set value '{"text":"[ Aucun score enregistré ]", "color":"dark_gray"}'

#set the name of the armor stand
execute as @a[scores={Position=1}] run loot replace block -5 -60 -5 container.0 loot lb:entities/player
execute as @a[scores={Position=1}] run data modify storage lb:top nametop1 set from block -5 -60 -5 Items[{Slot:0b}].tag.SkullOwner.Name
#tellraw new score
execute as @a[scores={Position=1}] run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@p[scores={Position=1}]","color":"dark_red"},{"text":" a réalisé un nouveau record en configuration ","color":"gold"},{"score":{"name":"level0weight","objective":"maxweightstage"},"color":"dark_green"},{"text":"/","color":"gold"},{"score":{"name":"level1weight","objective":"maxweightstage"},"color":"dark_green"},{"text":"/","color":"gold"},{"score":{"name":"level2weight","objective":"maxweightstage"},"color":"dark_green"},{"text":"/","color":"gold"},{"score":{"name":"level3weight","objective":"maxweightstage"},"color":"dark_green"},{"text":" : ","color":"gold"},{"score":{"name":"@p[scores={Position=1}]","objective":"minutes"},"color":"dark_red"},{"text":":","color":"gold"},{"score":{"name":"@p[scores={Position=1}]","objective":"secondes"},"color":"dark_red"},{"text":":","color":"gold"},{"score":{"name":"@p[scores={Position=1}]","objective":"centieme"},"color":"dark_red"}]

execute as @a[scores={Position=2}] run loot replace block -5 -60 -5 container.0 loot lb:entities/player
execute as @a[scores={Position=2}] run data modify storage lb:top nametop2 set from block -5 -60 -5 Items[{Slot:0b}].tag.SkullOwner.Name

execute as @a[scores={Position=3}] run loot replace block -5 -60 -5 container.0 loot lb:entities/player
execute as @a[scores={Position=3}] run data modify storage lb:top nametop3 set from block -5 -60 -5 Items[{Slot:0b}].tag.SkullOwner.Name



#top 1 : HandItems[0].tag.SkullOwner
#top 2 : HandItems[1].tag.SkullOwner
#top 3 : ArmorItems[3].tag.SkullOwner

#create a temp armor stand to store the new scores
summon minecraft:armor_stand 0 0 0 {Invisible:0b,Invulnerable:0b,Marker:0b,Tags:["tempscore"],NoGravity:1b,ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:""}}}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}

#set the old score in the temp armor stand
execute if score top1old Position matches 1 run data modify entity @e[tag=tempscore,limit=1] HandItems[0].tag.SkullOwner.Name set from entity @e[tag=finalscore,scores={level=4},limit=1] HandItems[0].tag.SkullOwner.Name
execute if score top1old Position matches 1 run scoreboard players operation @e[tag=tempscore,limit=1] top1 = @e[tag=finalscore,scores={level=4},limit=1] top1

execute if score top1old Position matches 2 run data modify entity @e[tag=tempscore,limit=1] HandItems[1].tag.SkullOwner.Name set from entity @e[tag=finalscore,scores={level=4},limit=1] HandItems[0].tag.SkullOwner.Name
execute if score top1old Position matches 2 run scoreboard players operation @e[tag=tempscore,limit=1] top2 = @e[tag=finalscore,scores={level=4},limit=1] top1

execute if score top1old Position matches 3 run data modify entity @e[tag=tempscore,limit=1] ArmorItems[3].tag.SkullOwner.Name set from entity @e[tag=finalscore,scores={level=4},limit=1] HandItems[0].tag.SkullOwner.Name
execute if score top1old Position matches 3 run scoreboard players operation @e[tag=tempscore,limit=1] top3 = @e[tag=finalscore,scores={level=4},limit=1] top1


execute if score top2old Position matches 2 run data modify entity @e[tag=tempscore,limit=1] HandItems[1].tag.SkullOwner.Name set from entity @e[tag=finalscore,scores={level=4},limit=1] HandItems[1].tag.SkullOwner.Name
execute if score top2old Position matches 2 run scoreboard players operation @e[tag=tempscore,limit=1] top2 = @e[tag=finalscore,scores={level=4},limit=1] top2

execute if score top2old Position matches 3 run data modify entity @e[tag=tempscore,limit=1] ArmorItems[3].tag.SkullOwner.Name set from entity @e[tag=finalscore,scores={level=4},limit=1] HandItems[1].tag.SkullOwner.Name
execute if score top2old Position matches 3 run scoreboard players operation @e[tag=tempscore,limit=1] top3 = @e[tag=finalscore,scores={level=4},limit=1] top2

execute if score top3old Position matches 3 run data modify entity @e[tag=tempscore,limit=1] ArmorItems[3].tag.SkullOwner.Name set from entity @e[tag=finalscore,scores={level=4},limit=1] ArmorItems[3].tag.SkullOwner.Name
execute if score top3old Position matches 3 run scoreboard players operation @e[tag=tempscore,limit=1] top3 = @e[tag=finalscore,scores={level=4},limit=1] top3

#Now from the players
execute as @a[scores={Position=1}] run scoreboard players operation @e[tag=tempscore,limit=1] top1 = @s timerun
execute as @a[scores={Position=1}] run data modify entity @e[tag=tempscore,limit=1] HandItems[0].tag.SkullOwner.Name set from storage lb:top nametop1

execute as @a[scores={Position=2}] run scoreboard players operation @e[tag=tempscore,limit=1] top2 = @s timerun
execute as @a[scores={Position=2}] run data modify entity @e[tag=tempscore,limit=1] HandItems[1].tag.SkullOwner.Name set from storage lb:top nametop2

execute as @a[scores={Position=3}] run scoreboard players operation @e[tag=tempscore,limit=1] top3 = @s timerun
execute as @a[scores={Position=3}] run data modify entity @e[tag=tempscore,limit=1] ArmorItems[3].tag.SkullOwner.Name set from storage lb:top nametop3

#update the score of the armorstand, his head and the nametop1
execute as @e[tag=finalscore,scores={level=4}] run data modify entity @s HandItems[0].tag.SkullOwner.Name set from entity @e[tag=tempscore,limit=1] HandItems[0].tag.SkullOwner.Name 
execute as @e[tag=finalscore,scores={level=4}] run data modify entity @s HandItems[1].tag.SkullOwner.Name set from entity @e[tag=tempscore,limit=1] HandItems[1].tag.SkullOwner.Name 
execute as @e[tag=finalscore,scores={level=4}] run data modify entity @s ArmorItems[3].tag.SkullOwner.Name set from entity @e[tag=tempscore,limit=1] ArmorItems[3].tag.SkullOwner.Name 
scoreboard players operation @e[tag=finalscore,scores={level=4}] top1 = @e[tag=tempscore,limit=1] top1
scoreboard players operation @e[tag=finalscore,scores={level=4}] top2 = @e[tag=tempscore,limit=1] top2
scoreboard players operation @e[tag=finalscore,scores={level=4}] top3 = @e[tag=tempscore,limit=1] top3
data modify storage lb:top nametop1 set from entity @e[tag=tempscore,limit=1] HandItems[0].tag.SkullOwner.Name 
data modify storage lb:top nametop2 set from entity @e[tag=tempscore,limit=1] HandItems[1].tag.SkullOwner.Name
data modify storage lb:top nametop3 set from entity @e[tag=tempscore,limit=1] ArmorItems[3].tag.SkullOwner.Name

#check if score is 0, in this case, reset the score
execute as @e[tag=finalscore,scores={level=4}] if score @s top1 matches 0 run scoreboard players reset @s top1
execute as @e[tag=finalscore,scores={level=4}] if score @s top2 matches 0 run scoreboard players reset @s top2
execute as @e[tag=finalscore,scores={level=4}] if score @s top3 matches 0 run scoreboard players reset @s top3

#delete the temp armor stand
kill @e[tag=tempscore]

function lb:scores/refreshscore