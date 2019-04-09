import json

with open('airlines.json') as f:
    data = json.load(f)

with open("ins_statements.cql","w+") as file:
    for index, dic in enumerate(data):
        file.write('INSERT INTO airlines JSON \'{}\';\n'.format(data[index]))

