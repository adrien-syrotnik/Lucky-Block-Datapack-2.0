
execute as @e[name=LuckyBlock,type=minecraft:armor_stand] unless score @s spawned > @e[name=GameManager,limit=1] 10 run scoreboard players add @s spawned 1
execute as @e[name=SpawnLB,type=minecraft:armor_stand] unless score @s spawned > @e[name=GameManager,limit=1] 10 run scoreboard players add @s spawned 1
execute as @e[name=Effect,type=minecraft:armor_stand] unless score @s spawned > @e[name=GameManager,limit=1] 10 run scoreboard players add @s spawned 1

execute as @e[name="LuckyBlock",type=minecraft:armor_stand] at @s run tp @s ~ ~ ~ ~5 ~

#execute as @e[name=LuckyBlock,type=minecraft:armor_stand,scores={spawned=1}] at @s if block ~ ~1.5 ~ air run setblock ~ ~1.5 ~ minecraft:yellow_stained_glass
execute as @e[name=LuckyBlock,type=minecraft:armor_stand,scores={spawned=1}] at @s run setblock ~ ~1.5 ~ minecraft:yellow_stained_glass

execute as @e[name=LuckyBlock] at @s if block ~ ~1.5 ~ air run summon armor_stand ~ ~1.25 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"Effect"}'}
execute as @e[name=LuckyBlock] at @s unless block ~ ~1.5 ~ minecraft:yellow_stained_glass run kill @s

execute as @e[name=SpawnLB,type=minecraft:armor_stand] at @s align x align z run summon armor_stand ~0.5 ~-1.25 ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1915369139,837830495,-1294780863,1101422121],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWM0OTcwZWE5MWFiMDZlY2U1OWQ0NWZjZTc2MDRkMjU1NDMxZjJlMDNhNzM3YjIyNjA4MmM0Y2NlMWFjYTFjNCJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:'{"text":"LuckyBlock"}',DisabledSlots:1052688,NoGravity:1b}
kill @e[name=SpawnLB]

kill @e[name=Effect,scores={spawned=10..}]


execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] at @s as @p at @s run function lb:events/on_break_lb

execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] if score explosif -1 matches -1 at @s run function lb:random_effect_explosive
execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] if score explosif -1 matches -1 at @s run return 0

execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] at @s as @p if entity @s[nbt={ActiveEffects:[{Id:26}]}] unless entity @s[nbt={ActiveEffects:[{Id:27}]}] as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1},limit=1,sort=nearest] run function lb:random_effect_luck 
execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] at @s as @p if entity @s[nbt={ActiveEffects:[{Id:26}]}] unless entity @s[nbt={ActiveEffects:[{Id:27}]}] as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1},limit=1,sort=nearest] run return 0

execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] at @s as @p if entity @s[nbt={ActiveEffects:[{Id:27}]}] unless entity @s[nbt={ActiveEffects:[{Id:26}]}] as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1},limit=1,sort=nearest] run function lb:random_effect_badluck 
execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] at @s as @p if entity @s[nbt={ActiveEffects:[{Id:27}]}] unless entity @s[nbt={ActiveEffects:[{Id:26}]}] as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1},limit=1,sort=nearest] run return 0

execute as @e[name=Effect,type=minecraft:armor_stand,scores={spawned=1}] at @s run function lb:random_effect_weight



