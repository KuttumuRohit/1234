from bs4 import BeautifulSoup

with open('index.html','r') as f:
    html_doc=f.read()
soup=BeautifulSoup(html_doc,'html.parser')
# print(soup.prettify())
# print(soup.title, type(soup.title))
# print(soup.h1)
# print(soup.find_all("div"))

# for link in soup.find_all('a'):
#     # print(link)
#     print(link.get("href"))

for child in soup.find(id="container").children:
    print(child)