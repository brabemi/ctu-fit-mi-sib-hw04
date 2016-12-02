# Domácí úkol 4

## Zadání úkolu

Naprogramujte R algoritmy v pluginu NfSen2R pro zobrazení následujících grafů v systému NfSen:
1. (7 bodů) Vytvořte histogram a empirickou CDF pro časy MEZI počátky toků.
2. (5 bodů) Vytvořte pie diagram pro zdrojové porty napozorovaných toků. Porty nad 1023 s četností 1 označte souhrnně jako „Other“.
3. (3 body) Vytvořte pie diagram pro cílové porty napozorovaných toků. Porty nad 1023 s četností 1 označte souhrnně jako „Other“.

Pie diagramy doporučuji sloučit do jenoho algoritmu. Výsledkem by tedy měly být dva algoritmy: Jeden pro histogram a empirickou CDF, a druhý pro oba pie diagramy.

## Soubory s algoritmy
```
.
├── etc
│   └── nfsen.conf
├── plugins
│   └── R
│       ├── default.r
│       ├── histogram.r
│       └── pie.r
```

## Spuštění

1. zapnutí nfsen daemona: /data/nfsen/bin/nfsen start
2. vstup do aplikace: http://monitor/nfsen/nfsen.php
3. výběr neprázdného časového okna: např. 201212050000 - 201212062359
4. nastavit breaks (počet sloupečků histogramu) nebo threshold (počet packetů <= threshold  -> port = other) 
