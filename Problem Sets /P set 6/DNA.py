import csv
from sys import argv

if len(argv) != 3:
    print("Usage error: dna.py sequence.txt database.csv")
    quit()

with open(argv[1], "r") as database:
    reader = csv.reader(database)
    for row in reader:
        dna_sequences = row
        dna_sequences.pop(0)
        break


with open(argv[2], "r") as sequence:
    reader_1 = csv.reader(sequence)
    for row in reader_1:
        dnalist = row

dna = dnalist[0]

sequences = {}

for item in dna_sequences:
    sequences[item] = 1

for key in sequences:
    l = len(key)
    MAXtemp = 0
    temp = 0
    for i in range(len(dna)):

        while temp > 0:
            temp -= 1
            continue

        if dna[i: i + l] == key:
            while dna[i - l: i] == dna[i: i + l]:
                temp += 1
                i += l

            if temp > MAXtemp:
                MAXtemp = temp

    sequences[key] += MAXtemp

with open(argv[1], newline = '') as peoplefile:
    reader = csv.DictReader(peoplefile)
    for person in reader:
        match = 0

        for dna in sequences:
            if sequences[dna] == int(person[dna]):
                match += 1
        if match == len(sequences):
            print(person['name'])
            exit()

    print("No match")
