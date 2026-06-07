# Debug:
$tellraw @s "zahl1: $(zahl1), zahl2: $(zahl2), operator: $(operator)"

# Daten in Scoreboard eintragen
$scoreboard players set .zahl1 zahlenrechner $(zahl1)
$scoreboard players set .zahl2 zahlenrechner $(zahl2)
$scoreboard players set .operator zahlenrechner $(operator)
scoreboard players set .ergebnis zahlenrechner 0

# == Operatoren ==
# 1: + Plus"
# 2: - Minus
# 3: * Mal
# 4: / Geteil
# 5: % Modulo
# 6: ^ Potenz
# 7: √ Wurzel ziehen

# Zahlen basierend auf dem Operator ausrechnen
execute if score .operator zahlenrechner matches 1 run function zahlenrechner:ausrechnen/v1_add
execute if score .operator zahlenrechner matches 2 run function zahlenrechner:ausrechnen/v1_sub
execute if score .operator zahlenrechner matches 3 run function zahlenrechner:ausrechnen/v1_mul
execute if score .operator zahlenrechner matches 4 run function zahlenrechner:ausrechnen/v1_div
execute if score .operator zahlenrechner matches 7 run function zahlenrechner:ausrechnen/v1_wurzel

# Falls nötig, dass ergebnis wieder durch 100 teilen und mit 2 Kommastellen anzeigen
function zahlenrechner:v1_ergebnis_finalisieren

# Ergebnis ausgeben
# dialog show @s zahlenrechner:ausgabe
tellraw @s ["Rechnung: ",\
           {"score": {"name": ".zahl1", "objective": "zahlenrechner"}}, " ",\
           {nbt: "operator", storage: "zahlenrechner:daten"}, " ",\
           {"score": {"name": ".zahl2", "objective": "zahlenrechner"}}, " ",\
           "= ",\
           {nbt: "ergebnis", storage: "zahlenrechner:daten"}]