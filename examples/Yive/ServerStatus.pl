#!/usr/bin/perl
use strict;
use HTML::Template;
use LWP::Simple qw(get);
use JSON qw( decode_json );
my $decoded = decode_json(get("http://mcapi.ca/query/us.mineplex.com/info"));
print qq(Content-type: text/html\n\n);

# Status: $info->{'status'}
# MOTD: $info->{'motd'}
# Version: $info->{'version'}
# Players Online: $info->{'players'}{'online'}
# Players Max: $info->{'players'}{'max'}
# Ping: $info->{'ping'}

# This will not display the player names who are online, you'll need to use the list API.
if(!$decoded->{'status'}) {
	print 'The server is offline';
} else {
	print 'The server is online with '.$decoded->{'players'}{'online'}.'/'.$decoded->{'players'}{'max'}.' players online.'
}