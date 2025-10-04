# Data Engineer Modul

Kurze Beschreibung des Moduls und aller enthaltenen Materialien (Skripte, Präsentationen, Dokumente). Diese README dient als Einstiegspunkt und Inhaltsverzeichnis.

## 🎯 Ziel & Lernziele

* Datenintegration (ETL): Extraktion, Transformation, Laden
* Datenmodellierung: ER‑Modell, Star-/Snowflake‑Schema
* Data Warehousing: Dimensionen/Fakten, **SCD (v. a. SCD0/SCD2)**
* Datenqualität & Bereinigung (inkl. **RegEx**‑Beispiele)
* SQL/T‑SQL & Python (Pandas) für Datenpipelines

## 📦 Inhalt / Dateiübersicht

> Hinweis: Liste basiert auf dem aktuellen Stand der bereitgestellten Dateien. Bitte ergänzen/aktualisieren, falls neue Dateien hinzukommen.

* **Ordner** `KLR-164/` – Unterlagen/Übungen zum Themenblock KLR‑164
* **Ordner** `Präsentation/` – Folien & Materialien

  * `Reisebuero_DWH_Praesentation.pptx`
  * `Reisebuero_DWH_Praesentation_mit_Diagrammen.pptx`
* **Ordner** `Projekt/` – Projektdateien (Reisebüro‑DWH, SQL/ETL, Begleitcode)
* **Ordner** `Ressourcen/` – Begleitmaterial (Artikel, Vorlagen, Referenzen)
* **Skript** `Gold_daten_vorbereitung.py` – Python‑ETL für Gold‑Layer (Pandas)
* **Dokument** `Lasten-/Pflichtenheft.pdf` – Anforderungen & Abgrenzungen
* **Dokument** `Data-Warehouse-Blueprints.pdf` – Architektur/Schema‑Entwürfe
* **Artikel** `Top 5 Data Cleansing Tools, die jeder Datenprofi kennen sollte.htm`
* **Dokument** `PythonT-SQL vs.SSIS.pdf` – Gegenüberstellung von ETL‑Ansätzen

> Falls weitere Dateien/Unterordner existieren (z. B. `sql/`, `data/`), bitte hier ergänzen.

## 🗂️ Empfohlene Ordnerstruktur (optional)

```
Modul-Data-Engineer/
├─ scripts/                  # Python, Hilfsskripte
├─ sql/                      # DDL/DML, Views, Prozeduren
├─ docs/                     # PDFs, Lasten-/Pflichtenheft, Blueprints
├─ presentations/            # PPTX
├─ data/
│  ├─ raw/                   # Rohdaten
│  ├─ staging/               # Zwischenschritte
│  ├─ curated/               # bereinigte/vereinheitlichte Daten
│  └─ gold/                  # auslieferungsreife Data Marts
└─ README.md
```

## 🧪 Quickstart (Python‑ETL)

Voraussetzungen: **Python 3.10+**, `pip install -r requirements.txt` (falls vorhanden).

```bash
# Beispiel: Skript ausführen (Pfade im Skript anpassen)
python Gold_daten_vorbereitung.py
```

### Typische Bibliotheken

* `pandas`, `numpy`, `pyyaml` (Konfiguration), ggf. `sqlalchemy`/Datenbanktreiber

## 🧰 Quickstart (SQL/T‑SQL)

* DDL/ETL‑Skripte in `sql/` ausführen (Reihenfolge beachten)
* SCD2: Historisierung über `valid_from`, `valid_to`, `is_current`
* Indizes/Constraints nachladen, Query‑Pläne prüfen

## 🏛️ Data‑Warehouse (Reisebüro‑Case)

* **Dimensionen** (z. B. Kunde, Zeit, Artikel, Filiale, Mitarbeiter)
* **Fakten** (z. B. Buchung/Verkauf)
* **SCD**: Stammdatenhistorie (z. B. Adressänderungen)
* **Star‑Schema** mit klaren Fremdschlüssel‑Beziehungen

## 🧼 Datenqualität & Bereinigung

* Dubletten, fehlende Werte, inkonsistente Formate
* RegEx‑basierte Normalisierung (Telefonnummern, PLZ, E‑Mail, IDs)
* Validierung per Constraints/Checks

## 🔁 ETL‑Prozess (Beispiel‑Stufen)

1. **Extract**: CSV/Excel/DB → `raw/`
2. **Transform**: Typen, Mapping, Keys, SCD‑Logik → `staging/`
3. **Load**: Dimensionen & Fakten → `curated/`/`gold/`

## 📝 Versionierung & Commits

* Aussagekräftige Messages (z. B. `feat:`, `fix:`, `docs:`)
* Große Binärdateien (PPTX/PDF) vorzugsweise mit Git LFS verwalten

## 📄 Lizenz & Nutzung

* Interne Ausbildungsunterlagen; bei externer Nutzung bitte Lizenz ergänzen (z. B. MIT) und Quellen angeben.

## 👤 Kontakt

Tanja Koschevnikov
GitHub: [https://github.com/Skalae581](https://github.com/Skalae581)
