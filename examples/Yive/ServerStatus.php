<?php
$serverip = "localhost";
$info = json_decode( file_get_contents( 'http://mcapi.ca/query/'.$serverip.'/info' ), true ); 

// Status: $info['status']
// MOTD: $info['motd']
// Version: $info['version']
// Players Online: $info['players']['online']
// Players Max: $info['players']['max']
// Ping: $info['ping']
//
// This will not display the player names who are online, you'll need to use the list API.
if(!$info['status']) {
	echo 'The server is offline';
} else {
	echo 'The server is online with '.$info['players']['online'].'/'.$info['players']['max'].' players online';
}
?>