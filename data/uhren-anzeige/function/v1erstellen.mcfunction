# Die Markierer für die Ziffern werden von der Blickrichtung des Erstellen-Rüstungsständers aus in einer Reihe erzeugt.
summon minecraft:marker ^ ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Ziffer","EtiUhrAnz.1Sekunden"]}
summon minecraft:marker ^-4 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Ziffer","EtiUhrAnz.1Sekunden","EtiUhrAnz.1Zehner"]}
summon minecraft:marker ^-7 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Punkte"]}
summon minecraft:marker ^-10 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Ziffer","EtiUhrAnz.1Minuten"]}
summon minecraft:marker ^-14 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Ziffer","EtiUhrAnz.1Minuten","EtiUhrAnz.1Zehner"]}
summon minecraft:marker ^-17 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Punkte"]}
summon minecraft:marker ^-20 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Ziffer","EtiUhrAnz.1Stunden"]}
summon minecraft:marker ^-24 ^4 ^ {Tags:["EtiUhrAnz.1Alle","EtiUhrAnz.1Rotation","EtiUhrAnz.1Ziffer","EtiUhrAnz.1Stunden","EtiUhrAnz.1Zehner"]}

# Die Ziffern-Markierer werden alle in die gleiche Richtung rotiert in die der Erstellen-Rüstungsständer schaut.
execute as @e[type=minecraft:marker,tag=EtiUhrAnz.1Rotation] positioned as @s run teleport @s ~ ~ ~ ~ ~

# Die Etiketten der Ziffern-Markierer für das Erstellen werden entfernt.
tag @e[type=minecraft:marker,tag=EtiUhrAnz.1Rotation] remove EtiUhrAnz.1Rotation

# Der Rüstungsständer wird am Ende entfernt.
kill @s
