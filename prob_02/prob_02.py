import csv

count = 0
with open('passwords.txt') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    for row in csv_reader:
        count+=1
        print('[[\'{}\'],[\'{}\'],[\'{}\']]'.format(row[0], row[1], row[2]))
        #print(count)
