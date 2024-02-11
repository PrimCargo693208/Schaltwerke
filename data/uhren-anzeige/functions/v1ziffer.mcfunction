# Der Konstruktionsblock wird platziert.
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"uhren-anzeige:v1ziffer_0",posY:0} replace

# Je nach der Blickrichtung des Ziffern-Rüstungsständers, wird die Ziffer durch den Konstruktionsblock an die entsprechende Richtung angepasst.
execute if entity @s[y_rotation=135..-135] run data merge block ~ ~ ~ {rotation:"NONE",posX:-1,posZ:0}
execute if entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:0,posZ:-1}
execute if entity @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX:1,posZ:0}
execute if entity @s[y_rotation=45..135] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posX:0,posZ:1}

# Der Wert des Ziffern-Rüstungsständers entscheidet, welche Ziffer in dem Konstruktionsblock geladen werden soll.
execute if entity @s[scores={PZUhrA.1Ziffer=1}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_1"}
execute if entity @s[scores={PZUhrA.1Ziffer=2}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_2"}
execute if entity @s[scores={PZUhrA.1Ziffer=3}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_3"}
execute if entity @s[scores={PZUhrA.1Ziffer=4}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_4"}
execute if entity @s[scores={PZUhrA.1Ziffer=5}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_5"}
execute if entity @s[scores={PZUhrA.1Ziffer=6}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_6"}
execute if entity @s[scores={PZUhrA.1Ziffer=7}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_7"}
execute if entity @s[scores={PZUhrA.1Ziffer=8}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_8"}
execute if entity @s[scores={PZUhrA.1Ziffer=9}] run data merge block ~ ~ ~ {name:"uhren-anzeige:v1ziffer_9"}

# Um den Konstruktionsblock zu aktivieren, wird ein Redstone-Block direkt darüber platziert.
setblock ~ ~1 ~ minecraft:redstone_block replace
