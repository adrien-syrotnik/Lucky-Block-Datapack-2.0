# if passive 2, replace the next effect with the same effect as the previous one
execute as @p if score @p passif_game matches 2 unless entity @s[tag=2inRaw] run item replace entity @p enderchest.4 from block -8 -60 -4 container.0
execute as @p if score @p passif_game matches 2 unless entity @s[tag=2inRaw] run tag @p add 2inRaw

execute as @p if score @p passif_game matches 2 if entity @s[tag=2inRaw2] run item replace block -8 -60 -4 container.0 from entity @p enderchest.4
execute as @p if score @p passif_game matches 2 if entity @s[tag=2inRaw2] run tag @p remove 2inRaw
execute as @p if score @p passif_game matches 2 if entity @s[tag=2inRaw2] run tag @p remove 2inRaw2




# compare from the first container of the shulker box where the effect is store
title @p actionbar [{"text":"Effect : "},{"nbt":"Items[0].tag.display.Name","block":"-8 -60 -4","interpret":true}]

execute store result score @p ideffect run data get block -8 -60 -4 Items[0].tag.id

execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Pig tower"}'}}}]} run function lb:effects/good/pig
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Bastion chest"}'}}}]} run function lb:effects/good/chest_treasure
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Zombie tower"}'}}}]} run function lb:effects/bad/zombie_tower
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Spawnpoint"}'}}}]} at @s as @p run function lb:effects/good/spawnpoint
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Levitate"}'}}}]} at @s as @p run function lb:effects/bad/levitation
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Hole"}'}}}]} run function lb:effects/bad/hole
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Upside down"}'}}}]} run function lb:effects/bad/upside_down
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Blindness"}'}}}]} run function lb:effects/bad/blindness
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Wood wall"}'}}}]} run function lb:effects/bad/wood_wall
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Sand trap"}'}}}]} run function lb:effects/bad/sand_trap
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Wither rain"}'}}}]} run function lb:effects/bad/wither_rain
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Pick me"}'}}}]} run function lb:effects/good/pick_me
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Thunderbolt"}'}}}]} run function lb:effects/bad/thunderbolt
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Back tp"}'}}}]} at @s as @p run function lb:effects/bad/back_tp
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Creeper ow man"}'}}}]} run function lb:effects/bad/creeper
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"I need healing"}'}}}]} run function lb:effects/good/healing
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Waterworld"}'}}}]} run function lb:effects/good/waterworld
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Anvil rain"}'}}}]} run function lb:effects/bad/anvil_rain
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Pumpkin time"}'}}}]} run function lb:effects/bad/pumpkin_time
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Cursed musics"}'}}}]} run function lb:effects/bad/cursed_musics
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Slow the enemies"}'}}}]} run function lb:effects/good/slow_enemies
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Accelerate the enemies"}'}}}]} run function lb:effects/good/accelerate_enemies
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Cow run"}'}}}]} run function lb:effects/bad/cow_run
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"It\'s fishing time!"}'}}}]} run function lb:effects/good/fishing_time
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Unknown book"}'}}}]} run function lb:effects/good/unknown_book
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Flying sniper"}'}}}]} run function lb:effects/bad/flying_sniper
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Get swapped"}'}}}]} run function lb:effects/bad/swapped
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Earthquake"}'}}}]} run function lb:effects/bad/earthquake
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Rabbit and wall"}'}}}]} run function lb:effects/bad/rabbit_and_wall
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Cover me in gold"}'}}}]} run function lb:effects/good/cover_me_in_gold
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"So much wind!"}'}}}]} run function lb:effects/bad/wind
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Emergency teleportation"}'}}}]} run function lb:effects/good/emergency_teleportation
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Damage curse"}'}}}]} run function lb:effects/bad/damage_curse
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Explosion curse"}'}}}]} run function lb:effects/bad/explosion_curse
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Dripstones everywhere!"}'}}}]} run function lb:effects/bad/dripstones_everywhere
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Cobwebs :("}'}}}]} run function lb:effects/bad/cobwebs
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Faster !"}'}}}]} run function lb:effects/good/haste
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Slime attack !"}'}}}]} run function lb:effects/bad/slime_attack
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Totem of undying"}'}}}]} run function lb:effects/good/totem_of_undying
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Blue shell"}'}}}]} run function lb:effects/bad/blue_shell
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Explosing mode !"}'}}}]} run function lb:effects/good/explosing_mode
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Powder snow"}'}}}]} run function lb:effects/bad/powder_snow
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Stone sword"}'}}}]} run function lb:effects/good/stone_sword
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Glowing"}'}}}]} run function lb:effects/good/glowing
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Pewpew the kamikaze !"}'}}}]} run function lb:effects/bad/kamikaze
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"MAGICAL POOP"}'}}}]} run function lb:effects/good/magical_poop
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Cake is a lie"}'}}}]} run function lb:effects/good/cake
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Emergency exit"}'}}}]} run function lb:effects/bad/wall_wool
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Can\'t mine block"}'}}}]} run function lb:effects/good/cant_mine_block
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Look at me"}'}}}]} run function lb:effects/good/look_at_me
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Fire"}'}}}]} run function lb:effects/bad/fire
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Guardians"}'}}}]} run function lb:effects/good/guardians
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Beep beep I\'m a sheep !"}'}}}]} run function lb:effects/good/sheep
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Name tag"}'}}}]} run function lb:effects/good/tag_item
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Feather falling"}'}}}]} run function lb:effects/good/feather_falling
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Stone Axe"}'}}}]} run function lb:effects/good/stone_axe
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Golem"}'}}}]} run function lb:effects/bad/golem
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"THE Red Bed"}'}}}]} run function lb:effects/good/red_bed
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Shulker"}'}}}]} run function lb:effects/bad/shulker
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"BCS"}'}}}]} run function lb:effects/good/bcs
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Ghost"}'}}}]} run function lb:effects/good/ghost
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Luck"}'}}}]} at @s run function lb:effects/good/luck
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"BadLuck"}'}}}]} at @s run function lb:effects/bad/badluck
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Gold ingot"}'}}}]} at @s run function lb:effects/good/gold_ingot
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Piglin"}'}}}]} at @s run function lb:effects/bad/piglin
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Villager"}'}}}]} at @s run function lb:effects/good/villager
execute if block -8 -60 -4 shulker_box{Items:[{Slot:0b,id:"minecraft:stone",tag:{display:{Name:'{"text":"Smoke"}'}}}]} at @s run function lb:effects/good/smoke

scoreboard players operation @p oldideffect = @p ideffect

execute as @p if score @p passif_game matches 2 if entity @s[tag=2inRaw] run tag @p add 2inRaw2

kill @s