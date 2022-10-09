#!/usr/bin/env python3

from asyncore import read
from readline import read_init_file
import pandas as pd

read_file = pd.read_csv (r'res/sctp_i.csv')
read_file.to_excel (r'res/sctp_i.xlsx', index = None, header=True)