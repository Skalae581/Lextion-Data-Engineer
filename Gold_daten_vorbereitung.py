import pandas as pd
import matplotlib.pyplot as plt
import pandas_market_calendars as mcal
import sns
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA
from sklearn.pipeline import Pipeline
from sklearn.linear_model import Ridge
from sklearn.metrics import r2_score, mean_squared_error
import numpy as np
import seaborn as sns
# CSV-Datei laden (im selben Ordner wie das Skript)
df = pd.read_csv("FINAL_USO.csv")

# Erste Dateninspektion
print("Dateninfo:")
print(df.info())
print("\nBeschreibung:")
print(df.describe())
print("\nErste Zeilen:")
print(df.head(10))

# # Datum als Datetime-Objekt umwandeln
# df['Date'] = pd.to_datetime(df['Date'])
#
# # Index setzen auf Datum
# df.set_index('Date', inplace=True)
#
# # Fehlende Werte markieren
# missing = df.isnull()
#
# # Plot: Heatmap der fehlenden Werte
# plt.figure(figsize=(15, 6))
# sns.heatmap(missing.T, cmap="Reds", cbar=False)
# plt.title("Fehlende Werte pro Spalte über die Zeit (nach Datum)")
# plt.xlabel("Datum")
# plt.ylabel("Merkmale")
# plt.tight_layout()
# plt.show()
# Annahme: df ist dein DataFrame mit einer Spalte 'Date'
df['Date'] = pd.to_datetime(df['Date'])
df = df.sort_values('Date')

nyse = mcal.get_calendar('NYSE')
valid_days = nyse.valid_days(start_date=df['Date'].min(), end_date=df['Date'].max())
missing_trading_days = valid_days.difference(df['Date'].unique())
# Erstelle vollständige Liste aller Werktage im Bereich
full_range = pd.date_range(start=df['Date'].min(), end=df['Date'].max(), freq='B')  # 'B' = Business days (Mo–Fr)

# Finde die fehlenden Tage
missing_dates = full_range.difference(df['Date'])

# Gib die Anzahl und Liste der fehlenden Tage aus
print(f"{len(missing_dates)} Tage fehlen im Datensatz.")
print(missing_dates)

# Plotten: Verteilung der fehlenden Tage über die Zeit

missing_df = pd.DataFrame(missing_trading_days, columns=['Date'])
missing_df['Fehlt'] = 1

plt.figure(figsize=(14, 4))
plt.plot(missing_df['Date'], missing_df['Fehlt'], '|', color='red', markersize=10)
plt.title("Fehlende NYSE-Handelstage im Datensatz")
plt.xlabel("Datum")
plt.yticks([])
plt.grid(True)
plt.tight_layout()
plt.show()