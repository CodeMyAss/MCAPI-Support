#! /usr/bin/python
# Thanks Sam from MinecraftMarket.com for helping me out with this language.
print "Content-type: text/html\n\n";
import urllib2
import json
json_url = urllib2.urlopen('http://mcapi.ca/query/us.mineplex.com/info')
data = json.load(json_url)
if data['status'] == 'false':
	print ('The server is offline.')
else:
	print("The server is online with %d/%d players online" % (data['players']['online'], data['players']['max']))
