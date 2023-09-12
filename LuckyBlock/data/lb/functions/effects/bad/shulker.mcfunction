scoreboard players set max RANDOM 100
function lb:rand

# 1 chance sur 100 de faire spawn un shulker Shiny, sinon un normal
# classique
execute if score @s RANDOM matches 1.. run summon shulker ~ ~ ~ {Health:10f,AttachFace:0b,Tags:["shulker_10hp"],Attributes:[{Name:"generic.max_health",Base:10}],Color:6b}

# Shiny
execute if score @s RANDOM matches 0 run summon shulker ~ ~ ~ {Health:10f,AttachFace:0b,Tags:["shulker_10hp"],Attributes:[{Name:"generic.max_health",Base:10}],Glowing:1b,CustomName:'{"text":"Shiny Shulker","color":"gold","bold":true}',Color:3b,CustomNameVisible:1b}
execute if score @s RANDOM matches 0 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.15 30 force @a
execute if score @s RANDOM matches 0 run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute if score @s RANDOM matches 0 run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"text":"Wow! ","color":"gold"},{"selector":"@p","color":"dark_red"},{"text":" found a ","color":"gold"},{"text":"Shiny Shulker","color":"#00AAFF","bold":true},{"text":" !","color":"gold"}]
execute if score @s RANDOM matches 0 run advancement grant @s only lb:lucky_block/shiny_shulker

scoreboard players set @e[tag=shulker_10hp,limit=1,sort=nearest] count 300