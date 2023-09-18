scoreboard players remove @e[scores={count=1..}] count 1
scoreboard players remove @a[scores={ghost_count=1..}] ghost_count 1

kill @e[type=skeleton,scores={count=0}]
kill @e[type=shulker,scores={count=0}]

execute as @e[type=turtle,scores={count=0}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:10b,Fuse:0,ignited:1b,Invulnerable:1b,CustomName:'{"text":"I AM the Danger!","color":"dark_green","bold":true}',Tags:["turtle_explosion"]}
execute as @e[type=turtle,scores={count=0}] run kill @s

execute as @e[name=WaterDis,scores={count=1},type=armor_stand] at @s run fill ~-2 ~5 ~-6 ~2 ~-5 ~6 air replace water
kill @e[name=WaterDis,scores={count=0}]

#malédition immobile
kill @e[tag=dontmove,scores={count=..0}]
execute as @e[tag=dontmove] at @s unless entity @a[distance=..1] at @p[distance=..3] positioned ~ ~ ~0.5 run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[tag=dontmove] at @s unless entity @a[distance=..1] at @p[distance=..3] run kill @s


stopsound @a[scores={d=1}]
execute as @a[scores={d=1,mdegat=1..}] run function lb:effects/malediction_degat_avant_death
scoreboard players reset @a[scores={d=1}] d

execute as @a[scores={book=19}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,CustomName:'{"text":"???","color":"white","bold":true}'}
scoreboard players add @a[scores={book=1..}] book 1
scoreboard players reset @a[scores={book=20..}] book

kill @e[type=snowball]
execute as @a[scores={snowball=1..},gamemode=survival] at @s run effect give @a[distance=1..] minecraft:slowness 3 5 true
execute as @a[scores={snowball=1..}] run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@s","color":"dark_red"},{"text":" apply Slowness effect to all players","color":"gold"}]
scoreboard players reset @a[scores={snowball=1..}] snowball


kill @e[type=egg]
execute as @a[scores={egg=1..},gamemode=survival] at @s run effect give @a[distance=1..] minecraft:speed 1 80 true
execute as @a[scores={egg=1..}] run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@s","color":"dark_red"},{"text":" apply Speed effect to all players","color":"gold"}]
scoreboard players reset @a[scores={egg=1..}] egg

#
clear @a[scores={fishing_rod=1..}] fishing_rod
scoreboard players reset @a[scores={fishing_rod=1..}] fishing_rod

execute as @a[scores={enderpearl=1..}] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0 0 0 .5 100
execute as @a[scores={enderpearl=1..}] at @s run playsound minecraft:entity.enderman.teleport ambient @a
execute as @a[scores={enderpearl=1..}] at @s run tp @s ~ ~25 ~
effect give @a[scores={enderpearl=1..}] minecraft:levitation 1 1 true
effect give @a[scores={enderpearl=1..}] minecraft:slow_falling 4 3 true
scoreboard players reset @a[scores={enderpearl=1..}] enderpearl
kill @e[type=ender_pearl]


execute as @e[name=Meuhhhh,scores={count=1..},type=cow] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 1
execute as @e[name=Meuhhhh,scores={count=1..},type=cow] at @s run damage @e[distance=..1,limit=1] 1000 mob_attack by @s
execute as @e[name=Meuhhhh,scores={count=1..},type=cow] at @s run tp @s ~ ~ ~1
kill @e[name=Meuhhhh,scores={count=0}]


execute as @e[type=armor_stand,tag=lock_obsi_inv] at @s unless entity @e[type=rabbit,tag=lock_obsi,distance=..1] at @p run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b}
execute as @e[type=armor_stand,tag=lock_obsi_inv] at @s unless entity @e[type=rabbit,tag=lock_obsi,distance=..1] run fill ~2 ~ ~-2 ~-2 ~2 ~-2 air replace stone
execute as @e[type=armor_stand,tag=lock_obsi_inv] at @s unless entity @e[type=rabbit,tag=lock_obsi,distance=..1] run kill @s

scoreboard players remove @a[scores={wind=1..}] wind 1
execute as @a[scores={wind=1..}] at @s run tp @s ~ ~ ~0.1
# execute as @a[scores={wind=1..}] at @s run playsound minecraft:entity.phantom.flap ambient @p ~ ~ ~ 1 1
execute as @a[scores={wind=99}] at @s run playsound minecraft:item.elytra.flying ambient @p ~ ~ ~ 1 2

execute as @e[type=slime] run data merge entity @s {Health:0.1f,Attributes:[{Name:generic.attack_damage,Base:0.5}]}


execute positioned -1000 100 -1000 as @a[distance=..500,gamemode=survival] run execute store result score @s Distance run data get entity @s Pos[2]
execute positioned -1000 100 -1000 as @a[distance=..500,gamemode=survival] run scoreboard players add @s Distance 1000
execute positioned -1000 100 -1000 as @a[distance=..500,gamemode=survival] run scoreboard players operation @s Distance *= -1 -1


#blue shell
execute as @e[tag=BlueShell,scores={count=1..}] at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 2
#execute as @e[tag=BlueShell,scores={count=1..}] at @s run tp @s ~ ~ ~ ~5 ~
#get best pos
execute at @e[tag=BlueShell,scores={count=1..}] as @a if score @s currentplayer = BestDistance currentplayer facing entity @s feet run tp @e[tag=BlueShell,scores={count=1..},limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @e[tag=BlueShell,scores={count=1..}] at @s run tp @s ^ ^ ^1

execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] unless score BestDistance currentplayer = @p currentplayer run damage @p 3 cactus by @s
execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] if score BestDistance currentplayer = @p currentplayer run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:4b,CustomName:'{"text":"Carapace Bleue","color":"dark_blue","bold":true}',Invulnerable:1b}
#Detect if the player touched is near the end, for the success
execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] if score BestDistance currentplayer = @p currentplayer as @e[name="NextStage",type=armor_stand,scores={level=4},distance=..10] if score @s currentplayer = @p currentplayer run advancement grant @p only lb:lucky_block/blue_shell_for_the_winner
execute as @e[tag=BlueShell,scores={count=1..}] at @s at @a[distance=..2] if score BestDistance currentplayer = @p currentplayer run kill @s

kill @e[tag=BlueShell,scores={count=..1}]


gamemode spectator @a[scores={kami=80}]
execute as @a[scores={kami=60}] at @s run title @s subtitle {"text":"Fonce sur les gens !","color":"dark_red"}
gamemode survival @a[scores={kami=1}]
execute as @a[scores={kami=60}] at @s run title @s title {"text":"3"}
execute as @a[scores={kami=60}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @a[scores={kami=40}] at @s run title @s title {"text":"2"}
execute as @a[scores={kami=40}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @a[scores={kami=20}] at @s run title @s title {"text":"1"}
execute as @a[scores={kami=20}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute as @a[scores={kami=1}] at @s run summon creeper ~ ~ ~ {Fuse:1,ignited:1,ExplosionRadius:5b,CustomName:'{"text":"Kamikaze","color":"dark_red","bold":true}'}
kill @a[scores={kami=1}]
scoreboard players remove @a[scores={kami=1..}] kami 1

execute as @a[scores={useBedRed=1..}] at @s run function lb:effects/bed/on_use_bed

execute as @a[scores={music=1..}] at @s run function lb:effects/good/bcs_music



#ghost
#first part, look for a survival player arround the ghost
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @p[distance=..1.5,gamemode=survival,tag=!ghost_start] run scoreboard players operation @s haunted_by = @p[tag=ghost_start] currentplayer
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@s","color":"dark_red"},{"text":" has been haunted by ","color":"gold"},{"selector":"@p","color":"dark_red"}]
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run title @s title {"text":"You are haunted !","color":"dark_red"}
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run title @s subtitle [{"selector":"@p[tag=ghost_start]","color":"dark_red"},{"text":" is haunted by ","color":"gold"},{"selector":"@s","color":"dark_red"}]
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run playsound minecraft:entity.vex.charge ambient @a ~ ~ ~ 2 1 1
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run say @p[tag=ghost_start]
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run scoreboard players set @p[tag=ghost_start] ghost_count 60
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run scoreboard players set @s ghost_count 60
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run tag @p[tag=ghost_start] add ghost_haunted
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run gamemode spectator @s
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run effect give @p[tag=ghost_start] minecraft:resistance 3 255
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run gamemode survival @p[tag=ghost_start]
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run tp @p[tag=ghost_start] @s
execute as @a[tag=ghost_start,scores={ghost_count=1..}] at @s as @a[tag=!ghost_start] if score @s haunted_by = @p[tag=ghost_start] currentplayer run tag @p[tag=ghost_start] remove ghost_start

#second part, the ghost is haunting the player
execute as @a[tag=ghost_haunted,scores={ghost_count=1..}] at @s as @a if score @s haunted_by = @p[tag=ghost_haunted] currentplayer run tp @s @p[tag=ghost_haunted]

execute as @a[scores={ghost_count=..0},tag=ghost_haunted] at @s as @e[tag=ghost,type=armor_stand] if score @s currentplayer = @p[tag=ghost_haunted] currentplayer run tp @p[tag=ghost_haunted] @s
execute as @a[scores={ghost_count=..0},tag=ghost_start] at @s as @e[tag=ghost,type=armor_stand] if score @s currentplayer = @p[tag=ghost_start] currentplayer run tp @p[tag=ghost_start] @s
execute as @a[scores={ghost_count=..0}] at @s as @e[tag=ghost,type=armor_stand] if score @s currentplayer = @p[scores={ghost_count=..0}] currentplayer run effect give @p[scores={ghost_count=..0}] minecraft:resistance 1 10 true
execute as @a[scores={ghost_count=..0}] at @s as @e[tag=ghost,type=armor_stand] if score @s currentplayer = @p[scores={ghost_count=..0}] currentplayer run kill @s
gamemode survival @a[scores={ghost_count=..0}]
execute as @a[scores={ghost_count=..0}] at @s run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 2
scoreboard players reset @a[scores={ghost_count=..0,haunted_by=0..}] haunted_by
effect clear @a[scores={ghost_count=..0},tag=ghost_haunted] mining_fatigue
effect clear @a[scores={ghost_count=..0},tag=ghost_start] mining_fatigue
tag @a[scores={ghost_count=..0}] remove ghost_haunted
tag @a[scores={ghost_count=..0}] remove ghost_start
scoreboard players reset @a[scores={ghost_count=..0}] ghost_count

#spawnpoint protection
execute as @e[tag=spawnpoint,type=armor_stand] at @s unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute as @e[tag=spawnpoint,type=armor_stand] at @s unless block ~ ~1 ~ air run setblock ~ ~1 ~ air

#nuke
execute as @e[tag=nuke,scores={count=1..}] at @s run particle minecraft:squid_ink ~ ~ ~ 2 1 2 0 300 force @a
# execute as @e[tag=nuke,scores={count=1..}] at @s run particle minecraft:flame ~ ~ ~ 1.5 0.5 1.5 0.1 100 force @a
execute as @e[tag=nuke,scores={count=1..}] at @s run tp @s ~ ~-2 ~
execute as @e[tag=nuke,scores={count=..0}] at @s run function lb:effects/nuke_explosion
kill @e[tag=nuke,scores={count=..0}]

execute as @e[tag=nuke_explosion] at @s run tp @s ^ ^ ^1 ~ ~
execute as @e[tag=nuke_explosion] at @s run summon creeper ~ ~0.5 ~ {ExplosionRadius:4b,Fuse:0,ignited:1b,Invulnerable:1b,CustomName:'{"text":"Nuke","color":"red","bold":true}'}
execute as @e[tag=nuke_explosion] at @s run summon creeper ~0.5 ~ ~0.5 {ExplosionRadius:4b,Fuse:0,ignited:1b,Invulnerable:1b,CustomName:'{"text":"Nuke","color":"red","bold":true}'}
execute as @e[tag=nuke_explosion] at @s run summon creeper ~-0.5 ~ ~-0.5 {ExplosionRadius:4b,Fuse:0,ignited:1b,Invulnerable:1b,CustomName:'{"text":"Nuke","color":"red","bold":true}'}
# execute as @e[tag=nuke_explosion] at @s run particle campfire_signal_smoke ~ ~ ~ 1.5 1.5 1.5 0 50 force @a


kill @e[tag=nuke_explosion,scores={count=..0}]

execute as @a[scores={effect_curse_heal=1}] at @s run function lb:effects/health/damage
execute as @a[scores={effect_curse_heal=3,count=0}] at @s run tellraw @s ["",{"text":"[Curse - Health] ","color":"black"},{"text":"Curse is finished.","color":"gold"}]
effect give @a[scores={effect_curse_heal=3,count=0}] minecraft:regeneration 60 0 true 
effect give @a[scores={effect_curse_heal=3,count=0,kit=9}] minecraft:regeneration 30 1 true 
execute as @a[scores={effect_curse_heal=3,count=0}] at @s run scoreboard players set @s effect_curse_heal 0


# dragon
execute as @e[tag=dragon,scores={count=1..},type=ender_dragon] at @s run tp @s @e[tag=dragon,type=armor_stand,limit=1,sort=nearest]

kill @e[tag=dragon,scores={count=..0}]

#SquidRocket
execute as @e[tag=SquidRocket,scores={count=201..250}] at @s run tp @s ~ ~0.05 ~
execute as @e[tag=SquidRocket,scores={count=201..250}] at @s run particle minecraft:squid_ink ~ ~-0.5 ~1 0.2 0.2 0.2 0 1 force @a
execute as @e[tag=SquidRocket,scores={count=249}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.1 0.1
execute as @e[tag=SquidRocket,scores={count=245}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.2 0.2
execute as @e[tag=SquidRocket,scores={count=240}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.3 0.3
execute as @e[tag=SquidRocket,scores={count=235}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.4 0.4
execute as @e[tag=SquidRocket,scores={count=230}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.5 0.5
execute as @e[tag=SquidRocket,scores={count=225}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.6 0.6
execute as @e[tag=SquidRocket,scores={count=220}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.7 0.7
execute as @e[tag=SquidRocket,scores={count=215}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.8 0.8
execute as @e[tag=SquidRocket,scores={count=210}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.9 0.9
execute as @e[tag=SquidRocket,scores={count=205}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 1 1

execute as @e[tag=SquidRocket,scores={count=1..200}] at @s run tp @s ^ ^ ^1
execute as @e[tag=SquidRocket,scores={count=1..200}] at @s run particle minecraft:squid_ink ~ ~ ~1.5 0.3 0.3 0.3 0 50 force @a
# execute as @e[tag=SquidRocket,scores={count=1..200}] at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 1 2
execute as @e[tag=SquidRocket,scores={count=1..200}] at @s run playsound minecraft:entity.player.splash.high_speed ambient @a ~ ~ ~ 1 2

execute as @e[tag=SquidRocket,scores={count=1..200}] store result score @s 1 at @s run fill ~-1 ~-5 ~ ~1 ~10 ~ air replace yellow_stained_glass
execute as @e[tag=SquidRocket,scores={count=1..200}] if score @s 1 matches 1 at @s run playsound block.glass.break master @a ~ ~ ~ 1 1
execute as @e[tag=SquidRocket,scores={count=1..200}] if score @s 1 matches 1 run scoreboard players add @s 3 1

#if 3 kill it
execute as @e[tag=SquidRocket,scores={count=1..200}] if score @s 3 matches 3 run kill @s

execute as @e[tag=SquidRocket,scores={count=1..}] at @s at @a if score @s currentplayer = @p currentplayer run ride @p mount @s
kill @e[tag=SquidRocket,scores={count=..100}]

#yamete advancement
execute as @e[tag=SquidRocket,scores={count=..200}] at @s at @e[name="NextStage",type=armor_stand,scores={level=4}] if score @s currentplayer = @e[name="NextStage",type=armor_stand,scores={level=4},limit=1,sort=nearest] currentplayer positioned ~ ~ ~-10 at @a[distance=..5] if score @p currentplayer = @s currentplayer run advancement grant @p only lb:lucky_block/yamete_kudasai