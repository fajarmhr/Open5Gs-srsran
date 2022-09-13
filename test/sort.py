#!/usr/bin/env python3
import pandas as pd
df = pd.read_csv('raw/semua.csv', encoding="ISO-8859-1")

# display
df
# df.sort_values(ascending=False,inplace=True)