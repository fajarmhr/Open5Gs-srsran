from asyncore import read
from readline import read_init_file
#!/usr/bin/env python3
import pandas as pd

read_file = pd.read_csv (r'/home/masddika/raw/international-migration-June-2022-estimated-migration-by-age-sex-corrected.csv')
read_file.to_excel (r'/home/masddika/screeptzy/res/data.xlsx', index = None, header=True)