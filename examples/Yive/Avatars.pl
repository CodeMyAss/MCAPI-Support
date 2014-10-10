#!/usr/bin/perl
use strict;
use HTML::Template;
print qq(Content-type: text/html\n\n);
my @friends = ( 'notch', 'yive', 'jeb_' );
while (my ($key, $friend) = each @friends) {
	print "<img src='http://mcapi.ca/v2/avatar/?player=" . $friend . "' style='margin: 2px;  border-style:solid; border-color:#000000;'/>";
}