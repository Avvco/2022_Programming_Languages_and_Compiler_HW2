import csv

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

file = open('HW2data.csv')
reader = csv.reader(file)
data = list(reader)

for i in range(1, len(data)):
        score = 0.1*(float(data[i][3]) + float(data[i][4]) + float(data[i][5])) + 0.3*float(data[i][6]) + 0.4*float(data[i][7])
        level = get_level(score)
        print(data[i][2], level)