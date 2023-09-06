scoreboard players set max RANDOM 160

function lb:rand

scoreboard players operation level RANDOM = @s RANDOM


execute if score level RANDOM matches 0..4 run summon minecraft:pig ~ ~1 ~ {Passengers:[{id:pig,Passengers:[{id:pig,Passengers:[{id:pig,Passengers:[{id:pig,Passengers:[{id:pig,Passengers:[{id:pig,Passengers:[{id:pig}]}]}]}]}]}]}]}

execute if score level RANDOM matches 5..10 run setblock ~ ~ ~ minecraft:chest{LootTable:"minecraft:chests/bastion_treasure"}

execute if score level RANDOM matches 11..14 run summon minecraft:zombie ~ ~1 ~ {Passengers:[{id:zombie,Passengers:[{id:zombie,Passengers:[{id:zombie,Passengers:[{id:zombie,Passengers:[{id:zombie,Passengers:[{id:zombie,Passengers:[{id:zombie}]}]}]}]}]}]}]}

execute if score level RANDOM matches 15..17 at @s as @p run function lb:createspawnpoint
execute if score level RANDOM matches 15..17 run tellraw @p ["",{"text":"[Lucky Block] Vous débloquez un ","color":"gold"},{"text":"checkpoint ","color":"dark_red"},{"text":"supplémentaire à ","color":"gold"},{"text":"cette position","color":"dark_red"}]

execute if score level RANDOM matches 18..22 at @s as @p run effect give @s levitation 3 1

execute if score level RANDOM matches 23..26 run function lb:effects/hole

execute if score level RANDOM matches 27..29 as @p at @s run tp @s ~ ~ ~ ~180 ~180

execute if score level RANDOM matches 30..31 as @p at @s run effect give @a[distance=1..] blindness 3 1
execute if score level RANDOM matches 30..31 run tellraw @p ["",{"text":"[Lucky Block] Vos ennemis deviennent ","color":"gold"},{"text":"aveugle ","color":"dark_red"},{"text":"!","color":"gold"}]
execute if score level RANDOM matches 30..31 at @a run playsound minecraft:entity.squid.squirt ambient @s ~ ~ ~ 2 1 1 

execute if score level RANDOM matches 32..35 run fill ~-2 ~ ~-2 ~2 ~4 ~-2 oak_wood
execute if score level RANDOM matches 32..35 run fill ~ ~ ~-1 ~ ~4 ~-1 ladder[facing=south]
execute if score level RANDOM matches 32..35 if score @p oldscore matches 11..14 run advancement grant @p only lb:lucky_block/zombie_tower

execute if score level RANDOM matches 36..38 as @p at @s run fill ~1 ~ ~1 ~-1 ~2 ~-1 sand replace air

execute if score level RANDOM matches 39 run scoreboard players set @p deathpotion 60

execute if score level RANDOM matches 40..44 run summon item ~ ~0.5 ~ {NoGravity:1b,CustomNameVisible:1b,Motion:[0.0,0.0,-0.50],CustomName:'{"text":"Pick me!","color":"dark_red","bold":true,"italic":true,"underlined":true,"strikethrough":true}',Item:{id:"minecraft:stone_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Hello there"}'}}}}

execute if score level RANDOM matches 45..48 run summon minecraft:lightning_bolt ~ ~ ~

execute if score level RANDOM matches 49..50 as @p at @s run function lb:effects/tp

execute if score level RANDOM matches 51..54 run summon creeper ~ ~ ~ {Invulnerable:0b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,powered:1b,ExplosionRadius:3b,Fuse:50,ignited:1b}

execute if score level RANDOM matches 55..59 as @p at @s run effect give @s instant_health 1 1 true
execute if score level RANDOM matches 55..59 as @p at @s run particle heart ~ ~ ~ 1 1 1 0.1 30 

execute if score level RANDOM matches 60..62 run fill ~-2 ~5 ~-6 ~2 ~-5 ~6 water replace air
execute if score level RANDOM matches 60..62 run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"WaterDis"}'}
execute if score level RANDOM matches 60..62 run scoreboard players set @e[name=WaterDis, type=armor_stand, sort=nearest, limit=1] count 100
execute if score level RANDOM matches 60..62 if score @p oldscore matches 80..84 run advancement grant @p only lb:lucky_block/fish_water
execute if score level RANDOM matches 60..62 if score @p oldscore matches 154..157 run advancement grant @p only lb:lucky_block/fire_water

execute if score level RANDOM matches 63..66 run fill ~-1 ~6 ~-3 ~1 ~6 ~-3 anvil replace air

execute if score level RANDOM matches 67..69 run item replace entity @p armor.head with carved_pumpkin{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute if score level RANDOM matches 70 run playsound minecraft:music_disc.cat master @p ~ ~ ~ 20 2 1
execute if score level RANDOM matches 70 run playsound minecraft:music_disc.wait master @p ~ ~ ~ 20 2 1
execute if score level RANDOM matches 70 run playsound minecraft:music_disc.mellohi master @p ~ ~ ~ 20 2 1

execute if score level RANDOM matches 71..73 run give @p snowball{display:{Name:'{"text":"Ralentis tes adversaires"}',Lore:['{"text":"Applique un effet de ralentissement"}','{"text":"sur tous tes adversaires"}']},Enchantments:[{}]} 1

execute if score level RANDOM matches 74..76 run give @p egg{display:{Name:'{"text":"Gêne tes adversaires"}',Lore:['{"text":"Applique un effet de vitesse"}','{"text":"qui gêne tous tes adversaires"}']},Enchantments:[{}]} 1

execute if score level RANDOM matches 77..79 run function lb:effects/cow

execute if score level RANDOM matches 80..84 run function lb:effects/fish
execute if score level RANDOM matches 80..84 if score @p oldscore matches 60..62 run advancement grant @p only lb:lucky_block/fish_water

execute if score level RANDOM matches 85..87 run summon item ~ ~ ~ {Item:{id:"minecraft:writable_book",Count:1b,tag:{display:{Name:'{"text":"???","bold":true,"obfuscated":true}'},Enchantments:[{}],pages:["Adieu"]}}}

execute if score level RANDOM matches 88..89 run summon bat ~ ~ ~ {PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",Glowing:1b,PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:dragon_head",Count:1b}]}]}
execute if score level RANDOM matches 88..89 run scoreboard players set @e[type=skeleton, sort=nearest, limit=1] count 200


execute if score level RANDOM matches 90 run function lb:effects/swaprole

execute if score level RANDOM matches 91..92 run execute run effect give @a minecraft:levitation 1 25 true
execute if score level RANDOM matches 91..92 as @a at @s run playsound minecraft:entity.warden.sonic_boom ambient @p ~ ~ ~ 1 1
execute if score level RANDOM matches 91..92 run execute run schedule function lb:effects/clearlevitation 8t
execute if score level RANDOM matches 91..92 as @a at @s run particle block dirt ~ ~ ~ 1 0 1 1 100 normal

execute if score level RANDOM matches 93..95 run setblock ~ ~ ~ stone_slab
execute if score level RANDOM matches 93..95 run summon rabbit ~ ~0.5 ~ {Glowing:1b,NoAI:1b,Health:0.1f,RabbitType:99,Tags:["lock_obsi"],CustomName:'{"text":"Tue-moi !"}'}
execute if score level RANDOM matches 93..95 run fill ~2 ~ ~-2 ~-2 ~2 ~-2 stone replace air
execute if score level RANDOM matches 93..95 run summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Tags:["lock_obsi_inv"]}

execute if score level RANDOM matches 96..99 run item replace entity @p armor.head with golden_helmet{Enchantments:[{id:"minecraft:blast_protection",lvl:2s}]} 1
execute if score level RANDOM matches 96..99 run item replace entity @p armor.chest with golden_chestplate{Enchantments:[{id:"minecraft:blast_protection",lvl:2s}]} 1
execute if score level RANDOM matches 96..99 run item replace entity @p armor.legs with golden_leggings{Enchantments:[{id:"minecraft:blast_protection",lvl:2s}]} 1
execute if score level RANDOM matches 96..99 run item replace entity @p armor.feet with golden_boots{Enchantments:[{id:"minecraft:blast_protection",lvl:2s}]} 1

execute if score level RANDOM matches 100..102 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:feather_falling",lvl:5s}]}}}

execute if score level RANDOM matches 103..106 run scoreboard players set @p wind 100

execute if score level RANDOM matches 107..108 run give @p ender_pearl{display:{Name:'{"text":"Tp de secours"}',Lore:['{"text":"Tp toi en l\'air et atterris en douceur"}']},Enchantments:[{}]} 1

execute if score level RANDOM matches 109 run tellraw @a ["",{"text":"[Malediction - Dégats] ","color":"black"},{"selector":"@p","color":"gold"},{"text":" a déclanché la Malédiction : ","color":"gold"},{"text":"Dégâts","color":"red"}]
execute if score level RANDOM matches 109 run function lb:effects/malediction_degat
execute if score level RANDOM matches 109 as @a at @s run playsound minecraft:entity.wither.spawn ambient @p ~ ~ ~ 1 0

execute if score level RANDOM matches 110..111 run tellraw @a ["",{"text":"[Malediction - Immobile] ","color":"black"},{"selector":"@p","color":"gold"},{"text":" a déclanché la Malédiction : ","color":"gold"},{"text":"Immobile","color":"red"}]
execute if score level RANDOM matches 110..111 as @a at @s run playsound minecraft:entity.zombie_villager.cure master @p ~ ~ ~ 2 0.7 1
execute if score level RANDOM matches 110..111 run schedule function lb:effects/immobile/1 1s

execute if score level RANDOM matches 112 run fill ~-2 ~4 ~-2 ~2 ~4 ~2 minecraft:pointed_dripstone[vertical_direction=down]

execute if score level RANDOM matches 113..116 run fill ~1 ~1 ~-2 ~-1 ~1 ~-2 minecraft:cobweb replace air

execute if score level RANDOM matches 117..120 run effect give @p minecraft:haste 10 40 false
execute if score level RANDOM matches 118..120 run tellraw @p ["",{"text":"[Lucky Block] Vous minez plus vite pendant ","color":"gold"},{"text":"10 secondes ","color":"dark_red"}]


execute if score level RANDOM matches 121..122 run summon slime ~ ~ ~ {Size:40,Attributes:[{Name:generic.attack_damage,Base:1}]}

execute if score level RANDOM matches 123..125 run give @p totem_of_undying

execute if score level RANDOM matches 126 run summon armor_stand ~ ~-1 ~ {Tags:["BlueShell"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1915369139,837830495,-1294780863,1101422121],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA0ZjllZWNiOWI2NmNhNTY0MDQ1MzgwOTNlNDcyZTY5MDE0ZGY3MmM0MjRhNzZkMjhhZmE4ZWZkZTVhMjNiMiJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:1052688,NoGravity:1b}
execute if score level RANDOM matches 126 run scoreboard players set @e[type=armor_stand,tag=BlueShell,limit=1,sort=nearest] count 200
execute if score level RANDOM matches 126 run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"selector":"@p","bold":true,"color":"dark_red"},{"text":" a lancé une ","color":"gold"},{"text":"carapace bleue ","bold":true,"color":"blue"},{"text":"sur le premier !","color":"gold"}]


execute if score level RANDOM matches 127 run scoreboard players set explosif -1 -1
execute if score level RANDOM matches 127 run scoreboard players set @e[name=timer] rainbow 30
execute if score level RANDOM matches 127 run schedule clear lb:effects/resetexplosif
execute if score level RANDOM matches 127 run schedule function lb:effects/resetexplosif 15s
execute if score level RANDOM matches 127 run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"text":"***","obfuscated":true},{"text":" Mode Explosif activé ! ","color":"dark_red"},{"text":"***","obfuscated":true}]
execute if score level RANDOM matches 127 at @a run playsound minecraft:entity.generic.explode ambient @p ~ ~ ~ 1 1

execute if score level RANDOM matches 128..131 run fill ~-1 ~ ~-1 ~1 ~ ~1 powder_snow replace air

execute if score level RANDOM matches 132..135 run summon item ~ ~ ~ {Item:{id:"minecraft:stone_sword",Count:1b}}

execute if score level RANDOM matches 136..138 run effect give @a glowing 10 1 false
execute if score level RANDOM matches 136..138 run tellraw @a ["",{"text":"[Lucky Block] Vous voyez vos ennemis ","color":"gold"},{"text":"à travers les murs","color":"dark_red"}]


#kamikaze
execute if score level RANDOM matches 139..140 run scoreboard players set @p kami 80
execute if score level RANDOM matches 139..140 run tellraw @a ["",{"text":"[Lucky Block] ","color":"gold"},{"text":"***","obfuscated":true},{"selector":"@p","color":"dark_red"},{"text":" est Kamikaze attention !","color":"gold"},{"text":"***","obfuscated":true}]

execute if score level RANDOM matches 141 run summon item ~ ~ ~ {NoGravity:0b,CustomNameVisible:1b,Age:-32768,PickupDelay:32767,CustomName:'{"text":"CACA MAGIQUE","color":"#330E0E","bold":true}',Item:{id:"minecraft:brown_dye",Count:1b}}
execute if score level RANDOM matches 141 run advancement grant @p only lb:lucky_block/poop
execute if score level RANDOM matches 141 at @p run playsound minecraft:entity.bee.hurt master @p ~ ~ ~ 2 0.1 1

execute if score level RANDOM matches 142..144 run setblock ~ ~ ~ iron_block
execute if score level RANDOM matches 142..144 run setblock ~ ~1 ~ cake

execute if score level RANDOM matches 145..147 run fill ~-1 ~ ~-1 ~-1 ~2 ~1 minecraft:orange_wool
execute if score level RANDOM matches 145..147 run fill ~1 ~ ~-1 ~1 ~2 ~1 minecraft:purple_wool
execute if score level RANDOM matches 145..147 run fill ~ ~ ~1 ~ ~2 ~1 minecraft:purple_wool
execute if score level RANDOM matches 145..147 run fill ~ ~ ~-1 ~ ~2 ~-1 minecraft:orange_wool

execute if score level RANDOM matches 148..149 run summon armor_stand ~ ~ ~ {Tags:["PlayerHead"],ArmorItems:[{},{},{},{id:"player_head",Count:1b}],HandItems:[{},{}],CustomName:'{"text":":)"}',CustomNameVisible:1b,DisabledSlots:1052688}
execute if score level RANDOM matches 148..149 facing entity @p eyes run tp @e[tag=PlayerHead,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute if score level RANDOM matches 148..149 as @p run loot spawn ~ ~1 ~ loot lb:entities/player
execute if score level RANDOM matches 148..149 run schedule function lb:effects/playerhead 1t

#buff
execute if score level RANDOM matches 150 run summon armor_stand ~ ~-1 ~ {Tags:["BlueShell"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1915369139,837830495,-1294780863,1101422121],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTA0ZjllZWNiOWI2NmNhNTY0MDQ1MzgwOTNlNDcyZTY5MDE0ZGY3MmM0MjRhNzZkMjhhZmE4ZWZkZTVhMjNiMiJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:1052688,NoGravity:1b}
execute if score level RANDOM matches 150 run scoreboard players set @e[type=armor_stand,tag=BlueShell,limit=1,sort=nearest] count 200

execute if score level RANDOM matches 151..153 at @p run effect give @a[distance=1..] mining_fatigue 3 50 true
execute if score level RANDOM matches 151..153 run tellraw @p ["",{"text":"[Lucky Block] Vos ennemis ","color":"gold"},{"text":"ne peut plus miner de blocs","color":"dark_red"},{"text":" pendant ","color":"gold"},{"text":"3 secondes","color":"dark_red"}]
execute if score level RANDOM matches 151..153 at @p run tellraw @a[distance=1..] ["",{"text":"[Lucky Block] Vous ","color":"gold"},{"text":"ne pouvez plus miner de blocs","color":"dark_red"},{"text":" pendant ","color":"gold"},{"text":"3 secondes","color":"dark_red"}]
execute if score level RANDOM matches 151..153 at @a run playsound minecraft:entity.villager.no ambient @s ~ ~ ~ 2 0.5 1

execute if score level RANDOM matches 154..157 run fill ~-2 ~ ~-2 ~2 ~ ~2 fire replace air

execute if score level RANDOM matches 158..159 run particle minecraft:elder_guardian ~ ~ ~ ~ ~ ~ 1 1 force @p
execute if score level RANDOM matches 158..159 run playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 2 1 1


scoreboard players operation @p oldscore = level RANDOM

kill @s