#!/usr/bin/env python3

from bs4 import BeautifulSoup
from requests import get
import re, sys

#ext = "tar.gz"
#html_page = urlopen("https://github.com/ventoy/Ventoy/releases/latest")
#soup = BeautifulSoup(html_page, "html.parser")
#link = soup.find('a', attrs={'href': re.compile("%s$" % ext)}).get('href')
#print("https://github.com%s" % link)

class Web(object):
    """docstring for Web"""
    def __init__(self, url):
        super(Web, self).__init__()

        html_page = get(url)
        soup = BeautifulSoup(html_page.text, "html.parser")
        links = soup.findAll('a', attrs={'href': re.compile(".deb$")})
        for link in links:
            print('{}{}'.format(url, link.get('href')))

if __name__ == '__main__':
    url = str(sys.argv[1])
    Web(url)