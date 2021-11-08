from pprint import pprint
import requests

r = requests.get('http://api.openweathermap.org/data/2.5/weather?q=buenos%20aires&units=metric&appid=4034469dc138fffe714e2b3bd3dc58e1')

pprint(r.json())