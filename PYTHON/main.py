import csv

def get_level(num):
    if(num <= 49):
        return 'E'
    elif(num <= 59):
        return 'D'
    elif(num <= 62):
        return 'C-'
    elif(num <= 66):
        return 'C'
    elif(num <= 69):
        return 'C+'
    elif(num <= 72):
        return 'B-'
    elif(num <= 76):
        return 'B'
    elif(num <= 79):
        return 'B+'
    elif(num <= 84):
        return 'A-'
    elif(num <= 89):
        return 'A'
    return 'A+'
    

file = open('HW2data.csv')
reader = csv.reader(file)
data = list(reader)

for i in range(1, len(data)):
        score = 0.1*(float(data[i][3]) + float(data[i][4]) + float(data[i][5])) + 0.3*float(data[i][6]) + 0.4*float(data[i][7])
        level = get_level(score)
        print(data[i][0], data[i][1], data[i][2], round(score,5), level, sep='\t')