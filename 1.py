from bs4 import BeautifulSoup
import requests

def fetchAndSaveToFile(url,path):
    r=requests.get(url)
    with open(path,'w',encoding='utf-8') as f:
        f.write(r.text)


url="https://www.ndtv.com/india-news/salman-khan-gets-death-threat-again-unknown-caller-demands-rs-2-crore-ransom-say-sources-6905079#pfrom=home-ndtv_topscroll"
fetchAndSaveToFile(url,'./1.html')