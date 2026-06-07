data modify storage zahlenrechner:daten operator set value "√"

# Eingabedaten abspeichern
scoreboard players operation .wurzel_x zahlenrechner = .zahl1 zahlenrechner
scoreboard players operation .wurzel_a zahlenrechner = .zahl1 zahlenrechner

# Eingabe multiplizieren, um Nachkommastellen zu berechnen
scoreboard players operation .wurzel_x zahlenrechner *= #10000 zahlenrechner
scoreboard players operation .wurzel_a zahlenrechner *= #10000 zahlenrechner

# Rechenschleife starten
function zahlenrechner:ausrechnen/v1_wurzel_schritt

# Ergebnis übertragen
scoreboard players operation .ergebnis zahlenrechner = .wurzel_x zahlenrechner
execute store result storage zahlenrechner:daten ergebnis float 0.01 run scoreboard players get .ergebnis zahlenrechner