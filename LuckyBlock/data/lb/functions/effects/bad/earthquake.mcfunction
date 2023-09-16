effect give @a[gamemode=survival] minecraft:levitation 1 25 true
execute as @a[gamemode=survival] at @s run playsound minecraft:entity.warden.sonic_boom ambient @s ~ ~ ~ 1 1
schedule function lb:effects/clearlevitation 8t
execute as @a[gamemode=survival] at @s run particle block dirt ~ ~ ~ 1 0 1 1 100 normal