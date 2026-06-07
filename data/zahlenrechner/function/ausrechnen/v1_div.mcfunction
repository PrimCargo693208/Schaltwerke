data modify storage zahlenrechner:daten operator set value "/"

scoreboard players operation .zahl1 zahlenrechner *= #100 zahlenrechner
# scoreboard players operation .zahl2 zahlenrechner *= #100 zahlenrechner

scoreboard players operation .ergebnis zahlenrechner = .zahl1 zahlenrechner
scoreboard players operation .ergebnis zahlenrechner /= .zahl2 zahlenrechner

execute store result storage zahlenrechner:daten ergebnis float 0.01 run scoreboard players get .ergebnis zahlenrechner

# scoreboard players operation .ergebnis zahlenrechner /= #100 zahlenrechner
scoreboard players operation .zahl1 zahlenrechner /= #100 zahlenrechner
# scoreboard players operation .zahl2 zahlenrechner /= #100 zahlenrechner