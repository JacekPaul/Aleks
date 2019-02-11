# Aleksander Spyra

# Wymaga Pythona 3.6 oraz zainstalowanej paczki Faker
# (pip install Faker)

import re
from faker import Faker

fake = Faker('pl_PL')
house_nr_pat = re.compile(r'\d+/?\d+')

def get_name_and_surname():
    name = fake.name().replace('pani', '').replace('pan', '')
    return '; '.join(name.split())
    
def get_address():
    address = fake.address()
    splitted = address.split('\n')
    street, city = splitted[0], splitted[1]
    house_number = house_nr_pat.findall(street)[0]
    street = street.replace(house_number, '')
    if '/' in house_number:
        house_number = house_number.replace('/', ', ')
    else:
        house_number += ', '
    
    data = []
    data.append(street)
    data.append(house_number)
    splitted_city = city.split()
    data.append(splitted_city[0])
    data.append(' '.join(splitted_city[1:]))
    return ', '.join(data)
    
for _ in range(1000):
    print('{}; {}'.format(get_name_and_surname(), get_address()))
