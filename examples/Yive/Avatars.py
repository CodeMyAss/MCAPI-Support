#! /usr/bin/python
# Thanks Sam from MinecraftMarket.com for helping me out with this language.
friends = [ 'yive', 'Notch', 'jeb_' ]
print "Content-type: text/html\n\n";
for friend in friends:
	print("<img src='http://mcapi.ca/avatar/2d/%s' style='margin: 2px;  border-style:solid; border-color:#000000;'/>") % friend
