from bs4 import BeautifulSoup
import requests

url="https://www.amazon.in/s?k=iphone+prices&crid=30IE98QOGKCHR&sprefix=iphone+price%2Caps%2C237&ref=nb_sb_noss_2"
r=requests.get(url,'lxml')
soup=BeautifulSoup(r.text)
print(soup.prettify())