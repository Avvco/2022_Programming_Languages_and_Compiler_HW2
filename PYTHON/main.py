import csv
import pandas as pd

def get_level(num):
    if(num >= 90):
        return 'A+'
    elif(num >= 85):
        return 'A'
    elif(num >= 80):
        return 'A-'
    elif(num >= 77):
        return 'B+'
    elif(num >= 73):
        return 'B'
    elif(num >= 70):
        return 'B-'
    elif(num >= 67):
        return 'C+'
    elif(num >= 63):
        return 'C'
    elif(num >= 60):
        return 'C-'
    elif(num >= 50):
        return 'D'
    else:
        return 'E'

df = pd.read_csv('HW2data.csv')

total = []
level = []
for i in range(0, len(df)):
    total.append(0.1*(df['HW1'][i]+df['HW2'][i]+df['HW3'][i]) + 0.3*df['Midterm'][i] + 0.4*df['Final'][i])
    level.append(get_level(total[i]))

df['Total'] = total
df['Level'] = level
print(df)