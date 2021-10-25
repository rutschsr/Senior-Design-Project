import requests
n = 5

response = requests.get('https://www.miamioh.edu/cec/academics/departments/ece/index.html)
for i in n:
  print (response.status_code)
  print (response.content)              
